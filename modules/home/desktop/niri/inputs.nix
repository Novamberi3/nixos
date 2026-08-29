{ ... }: {
  programs.niri.settings.inputs = {
    keyboard = {
      xkb = {
        layout = "us,us,ara";
#	variant = ",intl,";
        options = "grp:lalt_lshift_toggle";
      };
    };

    touchpad = {
      tap = true;
      natural-scroll = true;
      dwt = true;
    };

  };
}
