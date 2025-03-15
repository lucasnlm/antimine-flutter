#!/bin/bash
for i in 1 2 3 4 5 7 8 9; do
  inkscape -z  "0$i.svg" -o "rendered/0$i.png"
done
