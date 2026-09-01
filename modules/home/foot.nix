{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    iosevka
  ];

  programs.foot = {
    enable = true;

    settings = {
      main = {
        font = "Iosevka Mono:style=Medium:size=11";
        font-bold = "Iosevka Mono:style=Bold:size=11";
        font-italic = "Iosevka Mono:style=Medium Italic:size=11";
        font-bold-italic = "Iosevka Mono:style=Bold Italic:size=11";

        pad = "4x4";
        dpi-aware = "yes";
      };

      tweak = {
        grapheme-shaping = "yes";
      };

      cursor = {
        style = "beam";
        blink = "yes";
      };

      mouse = {
        hide-when-typing = "yes";
      };

      scrollback = {
        lines = 10000;
      };

      colors-dark = {
        background = "1e1e2e";
        foreground = "cdd6f4";

        regular0 = "45475a";  # Surface1  (black)
        regular1 = "f38ba8";  # Red
        regular2 = "a6e3a1";  # Green
        regular3 = "fab387";  # Peach (accent)
        regular4 = "89b4fa";  # Blue
        regular5 = "f5c2e7";  # Pink (magenta)
        regular6 = "94e2d5";  # Teal (cyan)
        regular7 = "bac2de";  # Subtext1 (white)

        bright0 = "585b70";   # Surface2  (bright black)
        bright1 = "eba0ac";   # Maroon
        bright2 = "a6e3a1";   # Green
        bright3 = "fab387";   # Peach
        bright4 = "74c7ec";   # Sapphire
        bright5 = "cba6f7";   # Mauve
        bright6 = "89dceb";   # Sky
        bright7 = "cdd6f4";   # Text (bright white)

        selection-foreground = "cdd6f4";
        selection-background = "45475a";
      };   
    };
  };
}
