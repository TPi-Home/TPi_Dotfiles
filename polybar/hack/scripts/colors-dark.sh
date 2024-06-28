#!/usr/bin/env bash

# Color files
PFILE="$HOME/.config/polybar/hack/colors.ini"
RFILE="$HOME/.config/polybar/hack/scripts/rofi/colors.rasi"

# Change colors
change_color() {
	# polybar
	sed -i -e 's/background = #.*/background = #141C21/g' $PFILE
	sed -i -e 's/foreground = #.*/foreground = #FFFFFF/g' $PFILE
	sed -i -e "s/primary = #.*/primary = $AC/g" $PFILE
	
	# rofi
	cat > $RFILE <<- EOF
	/* colors */

	* {
	  al:    #00000000;
	  bg:    #141C21FF;
	  ac:    ${AC}FF;
	  se:    ${AC}26;
	  fg:    #FFFFFFFF;
	}
	EOF
	
	polybar-msg cmd restart
}
#only changing some colors to gruvbox
if  [[ $1 = "--amber" ]]; then
	AC="#d79921"
	change_color
elif  [[ $1 = "--blue" ]]; then
	AC="#458588"
	change_color
elif  [[ $1 = "--blue-gray" ]]; then
	AC="#546e7a"
	change_color
elif  [[ $1 = "--brown" ]]; then
	AC="#6d4c41"
	change_color
elif  [[ $1 = "--cyan" ]]; then
	AC="#00acc1"
	change_color
elif  [[ $1 = "--deep-orange" ]]; then
	AC="#f4511e"
	change_color
elif  [[ $1 = "--deep-purple" ]]; then
	AC="#5e35b1"
	change_color
elif  [[ $1 = "--green" ]]; then
	AC="#98971a"
	change_color
elif  [[ $1 = "--gray" ]]; then
	AC="#928374"
	change_color
elif  [[ $1 = "--indigo" ]]; then
	AC="#3949ab"
	change_color
elif  [[ $1 = "--light-blue" ]]; then
	AC="#83a598"
	change_color
elif  [[ $1 = "--light-green-aqua" ]]; then
	AC="#b8bb26"
	change_color
elif  [[ $1 = "--lime" ]]; then
	AC="#b8bb26"
	change_color
elif  [[ $1 = "--orange" ]]; then
	AC="#d65d0e"
	change_color
elif  [[ $1 = "--pink" ]]; then
	AC="#d81b60"
	change_color
elif  [[ $1 = "--purple" ]]; then
	AC="#d3869b"
	change_color
elif  [[ $1 = "--red" ]]; then
	AC="#cc241d"
	change_color
elif  [[ $1 = "--teal" ]]; then
	AC="#00897b"
	change_color
elif  [[ $1 = "--yellow" ]]; then
	AC="#fabd2f"
	change_color
else
	cat <<- _EOF_
	No option specified, Available options:
	--amber	--blue		--blue-gray	--brown
	--cyan	--deep-orange	--deep-purple	--green
	--gray	--indigo	--light-blue	--light-green
	--lime	--orange	--pink		--purple
	--red	--teal		--yellow
	_EOF_
fi
