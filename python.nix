{ config, pkgs, ... }:

let
  # Install python packages
  my-python-packages = ps: with ps; [
    requests
    qrcode
    pyusb
  ];
in
{
  # Install python
  environment.systemPackages = with pkgs; [
    (pkgs.python3.withPackages my-python-packages)
  ];
}
