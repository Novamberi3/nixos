{ pkgs, ... }: {
  home.packages = with pkgs; [
    blueman
    obsidian
    dorion
    localsend
    legcord
    foot
  ];
}
