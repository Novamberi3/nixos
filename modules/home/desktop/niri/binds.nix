{ config, ... }: {
  programs.niri.settings.binds = 
      with config.lib.niri.actions;
      let
        hyper = "Mod+Shift+Alt+Ctrl";
      in
      {
        # Mod + <var> -> View/Spawn
        # Mod + Shift + <var> -> Move/Shift
        # Mod + Alt + <var> -> Modify/Toggle
        # Hyper + <var> -> Extras
      
        # Reload
        "Mod+B".action.spawn = [ "niri" "msg" "action" "load-config-file" ];
      
        # Applications
        "Mod+Return".action = spawn "foot";
        "Mod+Space".action.spawn = [ "noctalia" "msg" "panel-toggle" "launcher" ];
        "Mod+Comma".action.spawn = [ "noctalia" "msg" "settings-toggle" ];
      
        # Audio
        "XF86AudioRaiseVolume".action.spawn = [ "noctalia" "msg" "volume-up" ];
        "XF86AudioLowerVolume".action.spawn = [ "noctalia" "msg" "volume-down" ];
        "XF86AudioMute".action.spawn = [ "noctalia" "msg" "volume-mute" ];
      
        # Brightness
        "XF86MonBrightnessUp".action.spawn = [ "noctalia" "msg" "brightness-up" ];
        "XF86MonBrightnessDown".action.spawn = [ "noctalia" "msg" "brightness-down" ];
      
        # Screenshot
        "Mod+S".action.spawn = [ "noctalia" "msg" "screenshot-fullscreen" "pick" ];
        "Mod+R".action.spawn = [ "noctalia" "msg" "screenshot-region" ];
      
        # Window control
        "Mod+X".action = close-window;   
        "Mod+Z".action = toggle-window-floating;
        "Mod+M".action = maximize-column;
        "Mod+F".action = fullscreen-window;
        "Mod+O".action = toggle-overview;
      	
        # Window movement 
	"Mod+Shift+H".action = move-column-left;
	"Mod+Shift+L".action = move-column-right;
        "Mod+Shift+J".action = move-window-down;
        "Mod+Shift+K".action = move-window-up;
    
        # Window sizes
        "Mod+Alt+9".action = set-column-width "-10%";
        "Mod+Alt+0".action = set-column-width "+10%";
        "Mod+Alt+Minus".action = set-window-height "-10%";
        "Mod+Alt+Equal".action = set-window-height "+10%";
     
        # Focus
        "Mod+H".action = focus-column-left;
        "Mod+L".action = focus-column-right;
        "Mod+J".action = focus-window-down;
        "Mod+K".action = focus-window-up;
 
        # Workspaces
        "Mod+1".action = focus-workspace 1;
        "Mod+2".action = focus-workspace 2;
        "Mod+3".action = focus-workspace 3;
        "Mod+4".action = focus-workspace 4;
        "Mod+5".action = focus-workspace 5;
      
        # Move column to Workspace
        "Mod+Shift+1".action = { move-column-to-workspace=1; };
        "Mod+Shift+2".action = { move-column-to-workspace=2; };
        "Mod+Shift+3".action = { move-column-to-workspace=3; };
        "Mod+Shift+4".action = { move-column-to-workspace=4; };
        "Mod+Shift+5".action = { move-column-to-workspace=5; };
    
        # Monitors
        "Alt+H".action = focus-monitor-left;		
        "Alt+L".action = focus-monitor-right;
        "Mod+Ctrl+H".action = move-column-to-monitor-left;		
        "Mod+Ctrl+L".action = move-column-to-monitor-right;

#       "${hyper}+H".action = move-column-to-monitor-left;		
#       "${hyper}+L".action = move-column-to-monitor-right;
        
	# Quit
        "Mod+Shift+E".action.quit = { };
      };
}
