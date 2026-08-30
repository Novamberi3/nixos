{ ... }: {
  imports = [
    ./noctalia.nix
    ./desktop
    ./nvim
    ./browser.nix
    ./fonts.nix
    ./fish.nix
    ./packages
    ./foot.nix
  ];
}
