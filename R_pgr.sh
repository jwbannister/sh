#! /bin/bash
export HLPFIL='mktemp R_hlp.tmp.XXXXXX'
cat > $HLPFIL
xterm -e less $HLPFIL &
