#!/bin/bash

read -p "TARGET-FORMAT:" tformat
read -p "MODIFY-FORMAT:" mformat

rename 's\'$tformat'\'$mformat'\' *.$tformat
