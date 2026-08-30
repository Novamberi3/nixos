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
    ripgrep	
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
