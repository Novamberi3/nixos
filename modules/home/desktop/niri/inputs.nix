{ ... }: {
  programs.niri.settings.input = {
    keyboard = {
      xkb = {
        layout = "us,ara";
#	variant = ",intl,";
        options = "grp:lalt_space_toggle";
      };
    };

    touchpad = {
      tap = true;
      natural-scroll = true;
      dwt = true;
    };

  };
}
