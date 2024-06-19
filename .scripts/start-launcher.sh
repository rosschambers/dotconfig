launcher='wofi'
launcher_command="$launcher --show drun"

pkill -f $launcher
exec $launcher_command
