{ ... }: {
  wayland.windowManager.mango = {
    enable = true;

    settings = {
      exec-once = "noctalia";

      tagrule = [
        "id:1,layout_name:scroller"
        "id:2,layout_name:scroller"
        "id:3,layout_name:scroller"
        "id:4,layout_name:scroller"
        "id:5,layout_name:scroller"
        "id:6,layout_name:scroller"
        "id:7,layout_name:scroller"
        "id:8,layout_name:scroller"
        "id:9,layout_name:scroller"
      ];

      mousebind = [
        "SUPER,btn_left,moveresize,curmove"
        "SUPER,btn_right,moveresize,curresize"
      ];

      # Touchpad
      tap_to_click = 1;
      trackpad_natural_scrolling = 1;
      disable_while_typing = 1;
      drag_lock = 1;

      # Keyboard
      xkb_rules_layout = "us,us,ara";
      xkb_rules_variant = ",intl,";
      xkb_rules_options = "grp:lalt_lshift_toggle";

      bind = [
        "SUPER,b,reload_config"
        "SUPER,Return,spawn,foot"

        "SUPER,x,killclient"
        "SUPER,z,togglefloating"
        "SUPER,Space,togglefullscreen"
        "ALT,Space,togglemaximizescreen"

        "SUPER,h,focusdir,left"
        "SUPER,l,focusdir,right"
        "SUPER,j,focusdir,down"
        "SUPER,k,focusdir,up"

        "ALT,h,exchange_client,left"
        "ALT,l,exchange_client,right"
        "ALT,j,exchange_client,down"
        "ALT,k,exchange_client,up"

        "SUPER,1,view,1"
        "SUPER,2,view,2"
        "SUPER,3,view,3"
        "SUPER,4,view,4"
        "SUPER,5,view,5"
        "SUPER,6,view,6"
        "SUPER,7,view,7"
        "SUPER,8,view,8"
        "SUPER,9,view,9"

        "SUPER,s,spawn,noctalia msg panel-toggle launcher"
        "SUPER,c,spawn,noctalia msg panel-toggle control-center"
        "SUPER,comma,spawn,noctalia msg settings-toggle"

        "NONE,XF86AudioRaiseVolume,spawn,noctalia msg volume-up"
        "NONE,XF86AudioLowerVolume,spawn,noctalia msg volume-down"
        "NONE,XF86AudioMute,spawn,noctalia msg volume-mute"

        "NONE,XF86MonBrightnessUp,spawn,noctalia msg brightness-up"
        "NONE,XF86MonBrightnessDown,spawn,noctalia msg brightness-down"

        "SUPER,f,spawn,noctalia msg screenshot-fullscreen pick"
        "SUPER,i,spawn,noctalia msg screenshot-region"

        "CTRL+SUPER,k,resizewin,+0,-50"
        "CTRL+SUPER,j,resizewin,+0,+50"
        "CTRL+SUPER,h,resizewin,-50,+0"
        "CTRL+SUPER,l,resizewin,+50,+0"
      ];

      # Misc
      sloppyfocus = 0;
      cursor_hide_timeout = 3;
      drag_tile_to_tile = 1;
      
      # Theme
      borderpx = 2;
      gappih = 5;
      gappoh = 2;
      gappov = 2;
      cursor_size = 18;
      cursor_theme = "aosp-cursors";
      border_radius = 0;

      source = "~/.config/mango/noctalia.conf";
    };
  };
}
