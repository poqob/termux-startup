#!/bin/bash

cols=$(tput cols)
text="Welcome, $USER!"

# Draw top border
printf '%*s\n' "$cols" '' | tr ' ' '='

# Empty padding row
printf "|%*s|\n" $((cols - 2)) ''

# Centered text row
padding=$(( (cols - ${#text} - 2) / 2 ))
printf "|%*s%s%*s|\n" "$padding" '' "$text" $((cols - padding - ${#text} - 2)) ''

# Another empty padding row
printf "|%*s|\n" $((cols - 2)) ''

# Bottom border
printf '%*s\n' "$cols" '' | tr ' ' '='