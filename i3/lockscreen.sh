#/bin/bash

#lock() {
#	#$1 image path
#	letterEnteredColor=d23c3dff
#	letterRemovedColor=d23c3dff
#	passwordCorrect=00000000
#	passwordIncorrect=d23c3dff
#	background=00000000
#	foreground=ffffffff
#	i3lock \
#		-t -c 000000 \
#		--timepos="x+110:h-70" \
#		--datepos="x+43:h-45" \
#		--clock --date-align 1 --datestr "$locktext" \
#		--insidecolor=$background --ringcolor=$foreground --line-uses-inside \
#		--keyhlcolor=$letterEnteredColor --bshlcolor=$letterRemovedColor --separatorcolor=$background \
#		--insidevercolor=$passwordCorrect --insidewrongcolor=$passwordIncorrect \
#		--ringvercolor=$foreground --ringwrongcolor=$foreground --indpos="x+280:h-70" \
#		--radius=20 --ring-width=4 --veriftext="" --wrongtext="" \
#		--verifcolor="$foreground" --timecolor="$foreground" --datecolor="$foreground" \
#		--noinputtext="" --force-clock $lockargs
#}


letterEnteredColor=d23c3dff
letterRemovedColor=d23c3dff
passwordCorrect=00000000
passwordIncorrect=d23c3dff
background=00000000
foreground=ffffffff

locktext="主人不在,大门敞开!"

i3lock \
	-c 000000 \
	--ind-pos="x+110:h-70" \
	--clock --date-align 1 --date-str "$locktext" \
	--inside-color=$background --ring-color=$foreground --line-uses-inside \
	--keyhl-color=$letterEnteredColor --bshl-color=$letterRemovedColor --separator-color=$background \
	--insidever-color=$passwordCorrect --insidewrong-color=$passwordIncorrect \
	--ringver-color=$foreground --ringwrong-color=$foreground \
	--radius=20 --ring-width=4 --verif-text="" --wrong-text="" \
	--verif-color="$foreground" --time-color="$foreground" --date-color="$foreground" \
	--noinput-text="" --force-clock $lockargs
