{ pkgs, ... }: {
  home.packages = with pkgs; [
    ioskeley-mono.normal
    font-awesome
  ];
}
