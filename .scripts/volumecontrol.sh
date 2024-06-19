#!/bin/bash

# Script to create pop-up notification when volume changes.

# Create a delay so the change in volume can be registered:
sleep 0.05

# Get the volume and check if muted or not (STATE):
VOLUME=`pactl list sinks | grep '^[[:space:]]Volume:' | \
    head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,'
`
# Future: get volume via "wpctl get-volume @DEFAULT_AUDIO_SINK@" and get rid of pulsemixer.

# Have a different symbol for varying volume levels:
if [[ $VOLUME == "0" ]]; then
        if [ "${VOLUME}" == "0" ]; then
                ICON=~/.config/icons/vol-mute.png
        elif [ "${VOLUME}" -lt "33" ]; then
                ICON=~/.config/icons/vol-low.png
        elif [ "${VOLUME}" -lt "90" ]; then
                ICON=~/.config/icons/vol-med.png
        else
                ICON=~/.config/icons/vol-high.png
        fi

        notify-send "Volume: $VOLUME%" \
            -t 2000 \
            -i ${ICON} \
            -h int:value:${VOLUME} \
            -h string:synchronous:volume-change

# If volume is muted, display the mute sybol:
else
        notify-send "Muted (volume: $VOLUME%)" \
            -t 2000 \
            -i ~/Downloads/pngegg.png \
            -h int:value:${VOLUME} \
            -h string:synchronous:volume-change
fi