{ pkgs, ... }: {
  home.packages = with pkgs; [
    blueman
    foot
    legcord
    localsend
    obsidian
    prismlauncher
  ];
}
