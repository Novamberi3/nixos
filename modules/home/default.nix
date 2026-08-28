{ ... }: {
  imports = [
    ./noctalia.nix
#    ./mangowm.nix
    ./desktop/niri.nix
    ./desktop/quickshell/settings.nix
    ./nvim.nix
    ./browser.nix
    ./fonts.nix
    ./fish.nix
    ./packages
    ./foot.nix
  ];
}
