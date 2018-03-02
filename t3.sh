#!/bin/bash
Unix=(DEbian "Red hut" Ubuntu Suse Fedora)
echo ${Unix[@]}
echo ${#Unix[@]}
echo ${#Unix[2]}
echo ${Unix[@]: 3:4}
echo ${Unix[@]/Ubuntu/SCOUnix}
Unix[5]=AIX
Unix[6]=HP-UX
echo ${Unix[@]}
unset Unix[2]
Linux=${Unix[@]}
echo ${Linux[@]}
Bash=(${Linux[@]} ${Unix[@]})
echo ${Bash[@]}
unset Unix[@]
unset Linux



