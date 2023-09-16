{ pkgs, ... }:

let
  grimslurpclip = pkgs.writeScriptBin "grimslurpclip" (builtins.readFile "${./.}/grimslurpclip.sh");
  grimslurpwrite = pkgs.writeScriptBin "grimslurpwrite" (builtins.readFile "${./.}/grimslurpwrite.sh");
in {
  environment.systemPackages = [
    grimslurpclip
    grimslurpwrite
  ];
}
