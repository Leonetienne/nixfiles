{ config, pkgs, ... }:

{
  # Enable docker
  virtualisation.docker = {
    enable = true;
    rootless = {
      enable = true;
      setSocketVariable = true;
    };
  };

  # Also install colima and docker-compose
  environment.systemPackages = with pkgs; [
    colima
    docker-compose
  ];
}
