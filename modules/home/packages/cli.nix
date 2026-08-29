{ pkgs, ... }: {
  home.packages = with pkgs; [
    appimage-run
    btop
    cliphist
    git
    grim
    mako
    pipewire
    playerctl
    slurp
    tree
    upower
    wireplumber
    wl-clipboard
    xdg-desktop-portal-wlr
    xwayland-satellite
    yazi
  ];
}
