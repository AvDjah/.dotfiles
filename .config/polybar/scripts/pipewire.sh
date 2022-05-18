#!/usr/bin/env bash

function main() {
    VOLUME=$(pamixer --get-volume-human)

    case $1 in
        "up")
            pamixer --increase 10
            ;;
        "down")
            pamixer --decrease 10
            ;;
        "mute")
            pamixer --toggle-mute
            ;;
        *)
            echo " ${VOLUME}"
     esac
}

main "$@"
