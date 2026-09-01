{ pkgs, ... }: {
  home.packages = with pkgs; [
    blueman
    foot
    kanshi
    legcord
    localsend
    obsidian
    qbittorrent 
  ];
}
