#!/usr/bin/env zsh

ICON_PADDING_RIGHT=4

case $INFO in
	"Brave Browser")
		ICON=
		;;
	"PhpStorm")
		ICON=
		;;
	"Calendar")
		ICON=
		;;
	"Discord")
		ICON=󰙯
		;;
	"Slack")
		ICON=󰒱
		;;
	"Steam")
		ICON=󰓓
		;;
	"FaceTime")
		ICON=
		;;
	"Finder")
		ICON=󰀶
		;;
	"Google Chrome")
		ICON=
		;;
	"Unity Hub")
		ICON=
		;;
	"Unity")
		ICON=
		;;
	"Messages")
		ICON=󰍦
		;;
	"RustRover")
		ICON=
		;;
	"Preview")
		ICON=
		;;
	"WezTerm")
		ICON=
		;;
	"Music")
		ICON=
		;;
	"Notes")
		ICON=
		;;
	"Docker")
		ICON=
		;;
	"Youtube")
		ICON=
		;;
	*)
		ICON=
		;;
esac

sketchybar --set $NAME icon=$ICON icon.padding_right=$ICON_PADDING_RIGHT
sketchybar --set $NAME.name label="$INFO"
