{ ... }: {
  imports = [
    ./noctalia.nix
    ./desktop
    ./nvim.nix
    ./browser.nix
    ./fonts.nix
    ./fish.nix
    ./packages
    ./foot.nix
  ];
}
