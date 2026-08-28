{ pkgs, ... }: {
  programs.fish = {
    enable = true;
    shellAliases = {
      ll = "ls -l";
      c = "clear";
      rebuild = "sudo nixos-rebuild switch --flake .#nullpad";
      nixconf = "cd ~/nixos";
    };
    interactiveShellInit = ''
      set fish_greeting # Disable greeting
    '';
  };
}
