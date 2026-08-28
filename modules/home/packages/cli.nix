{ pkgs, ... }: {
  home.packages = with pkgs; [
    git
    upower
    mako
    wireplumber
    pipewire
    xdg-desktop-portal-wlr
    playerctl
    wl-clipboard
    cliphist
    grim
    slurp
    yazi
    tree
    xwayland-satellite
    btop
  ];
}
