if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Check if we are on tty1
if test (tty) = /dev/tty1
    # Start Hyprland if it's not already running
    if not pgrep -x Hyprland > /dev/null
        exec Hyprland
    end
end

set -x QT_QPA_PLATFORMTHEME qt6ct
