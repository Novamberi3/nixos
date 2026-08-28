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
        background = "282828";
        foreground = "ebdbb2";

        regular0 = "282828";
        regular1 = "cc241d";
        regular2 = "98971a";
        regular3 = "d79921";
        regular4 = "458588";
        regular5 = "b16286";
        regular6 = "689d6a";
        regular7 = "a89984";

        bright0 = "928374";
        bright1 = "fb4934";
        bright2 = "b8bb26";
        bright3 = "fabd2f";
        bright4 = "83a598";
        bright5 = "d3869b";
        bright6 = "8ec07c";
        bright7 = "ebdbb2";

        selection-foreground = "282828";
        selection-background = "d5c4a1";
      };
    };
  };
}
