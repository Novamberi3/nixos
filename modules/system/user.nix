{ pkgs, inputs, username, host, self, ... }:
{
  imports = [ inputs.home-manager.nixosModules.home-manager ];

  programs.fish.enable = true;

  environment.pathsToLink = [ "/share/applications" "/share/xdg-desktop-portal" ];

  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    extraSpecialArgs = { inherit inputs username host self; };

    users.${username} = {
      imports = [ ../../modules/home ];

      home.username = username;
      home.homeDirectory = "/home/${username}";
      home.stateVersion = "24.05";
      programs.home-manager.enable = true;
    };

    sharedModules = [
      inputs.mango.hmModules.mango
      inputs.niri.homeModules.niri
      inputs.noctalia.homeModules.default
    ];

    backupFileExtension = "bak";
  };

  users.users.${username} = {
    isNormalUser = true;
    description = username;
    extraGroups = [ "networkmanager" "wheel" "video" "render" ];
    shell = pkgs.fish;
  };
}
