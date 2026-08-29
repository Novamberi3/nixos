{ ... }: {
  programs.niri.settings = {
    binds = {

      # Mod + <var> -> View/Spawn
      # Mod + Shift + <var> -> Move/Shift
      # Mod + Alt + <var> -> Modify/Toggle
      # Hyper + <var> -> Systems overlay/Utilities action

      "Mod+B".action.spawn = [ "niri" "msg" "action" "load-config-file" ];
      "Mod+Return".action.spawn = "foot";

      "Mod+X".action.close-window = { };   
      "Mod+Z".action.toggle-window-floating = { };
      "Mod+Space".action.maximize-column = { };
      "Alt+Space".action.fullscreen-window = { };

      "Mod+H".action.focus-column-left = { };
      "Mod+L".action.focus-column-right = { };
      "Mod+J".action.focus-window-down = { };
      "Mod+K".action.focus-window-up = { };

      "Alt+H".action.move-column-left = { };
      "Alt+L".action.move-column-right = { };
      "Alt+J".action.move-window-down = { };
      "Alt+K".action.move-window-up = { };

      "Mod+1".action.focus-workspace = 1;
      "Mod+2".action.focus-workspace = 2;
      "Mod+3".action.focus-workspace = 3;
      "Mod+4".action.focus-workspace = 4;
      "Mod+5".action.focus-workspace = 5;
      "Mod+6".action.focus-workspace = 6;
      "Mod+7".action.focus-workspace = 7;
      "Mod+8".action.focus-workspace = 8;
      "Mod+9".action.focus-workspace = 9;

      "Mod+S".action.spawn = [ "noctalia" "msg" "panel-toggle" "launcher" ];
      "Mod+C".action.spawn = [ "noctalia" "msg" "panel-toggle" "control-center" ];
      "Mod+Comma".action.spawn = [ "noctalia" "msg" "settings-toggle" ];

      "XF86AudioRaiseVolume".action.spawn = [ "noctalia" "msg" "volume-up" ];
      "XF86AudioLowerVolume".action.spawn = [ "noctalia" "msg" "volume-down" ];
      "XF86AudioMute".action.spawn = [ "noctalia" "msg" "volume-mute" ];

      "XF86MonBrightnessUp".action.spawn = [ "noctalia" "msg" "brightness-up" ];
      "XF86MonBrightnessDown".action.spawn = [ "noctalia" "msg" "brightness-down" ];

      "Mod+F".action.spawn = [ "noctalia" "msg" "screenshot-fullscreen" "pick" ];
      "Mod+I".action.spawn = [ "noctalia" "msg" "screenshot-region" ];

      "Mod+Shift+E".action.quit = { };
    };
  };
}
