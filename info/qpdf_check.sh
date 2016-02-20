#!/bin/sh

# Check pdf with qpdf, display result with
# default text editor

# I/O stuff
fileIn=$1
fileOut=/tmp/"$fileIn".txt

# Viewer - default text editor (should work across most Linux flavors)
viewer=xdg-open

# Run qpdf
qpdf "$fileIn" --check > "$fileOut"

# Display result
$viewer "$fileOut"

# Wait 0.5 s & delete fileOut 
sleep 0.5
rm $fileOut

 
