{ host, ... }:
{
  imports = [
    ./hardware.nix
    ./power.nix
    ../../modules/system
  ];

  networking.hostName = host;

  boot.loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
  };

  i18n.defaultLocale = "en_US.UTF-8";
  time.timeZone = "Africa/Casablanca";

  security.polkit.enable = true;

  hardware = {
    graphics.enable = true;
    bluetooth = {
      enable = true;
      powerOnBoot = true;
    };
  };

  system.stateVersion = "24.05";
}
