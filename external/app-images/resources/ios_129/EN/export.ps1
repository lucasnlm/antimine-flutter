#!/bin/bash
for ($i = 1; $i -le 9; $i++) {
  inkscape -z  "0$i.svg" -o "rendered/0$i.png"
}