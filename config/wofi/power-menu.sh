# List of options
options="Shutdown\nReboot\nLock\nBluetooth\nScreenshot\nRecord\nText Editor\nDisks"

# Display the options using Wofi
selected=$(echo -e "$options" | wofi --show dmenu --prompt "Power Menu:")

# Execute the selected option
case $selected in
    Shutdown)
        systemctl poweroff
        ;;
    Reboot)
        systemctl reboot
        ;;
    Lock)
        hyprlock
        ;;
    Bluetooth)
        blueman-manager
        ;;
    Screenshot)
        hyprshot -m output
        ;;
    Record)
        flatpak run io.github.seadve.Kooha
        ;;
    "Text Editor")
        gnome-text-editor
        ;;
    Disks)
        gnome-disks
        ;;
esac
