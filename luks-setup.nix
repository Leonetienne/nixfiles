{ config, pkgs, ... }:

{
  # Bootloader
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Setup keyfile
  boot.initrd.secrets = {
    "/crypto_keyfile.bin" = null;
  };

  # Enable swap on luks
  boot.initrd.luks.devices."luks-aa71e880-39b7-4cc2-a4c6-c310b578563c".device = "/dev/disk/by-uuid/aa71e880-39b7-4cc2-a4c6-c310b578563c";
  boot.initrd.luks.devices."luks-aa71e880-39b7-4cc2-a4c6-c310b578563c".keyFile = "/crypto_keyfile.bin";
}
