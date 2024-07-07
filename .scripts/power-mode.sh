entries="󰓅\tPerformance\n󰾅\tBalanced\n󰾆\tPower-Save"

choice=$(echo -e $entries|wofi --width 250 --height 210 --dmenu | awk '{print tolower($2)}')

echo $choice

case $choice in
  "performance")
    exec powerprofilesctl set performance;;
  "balanced")
    exec powerprofilesctl set balanced;;
  "power-save")
    exec powerprofilesctl set power-saver;;
esac
