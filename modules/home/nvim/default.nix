{ pkgs, ... }:
{
  home.packages = with pkgs; [
    tree-sitter
    qt6.qtdeclarative 
    python313Packages.pylatexenc
    lua-language-server
    gopls
    typescript-language-server
    gcc
    gnumake
  ];

  programs.neovim.enable = true;
  xdg.configFile."nvim".source = ./nvim;
}
