#!/bin/bash

source some_functions

prompt_confirm() {
  while true; do
    read -r -n 1 -p "${1:-Continue?} [y/n]: " REPLY
    case $REPLY in
      [yY]) echo ; return 0 ;;
      [nN]) echo ; return 255 ;;
      *) printf " \033[31m %s \n\033[0m" "invalid input"
    esac 
  done  
}

declare -a arr=(func1 \
		func2 \
		func3 \
		func4)

for i in "${arr[@]}"
do
   prompt_confirm "Proceed with $i?"
   if [ "$?" -eq 0 ]; 
   then
	 "$i"
   else
	   echo "$i aborted"
   fi
done

