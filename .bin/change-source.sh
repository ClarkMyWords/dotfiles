#!/bin/sh

get_short_name(){
    long_name=$1
    short_name=$(pactl list sources | grep -A 1 -i "Name: $long_name" | grep -i "Description: " | awk '{$1=""; print $0}')
    echo $short_name
}

main(){
    source_ids=( $(pactl list sources short | awk '{print $1}') )
    source_long_names=( $(pactl list sources short | awk '{print $2}') )

    while : ; do
        echo Select by Id
        echo -e "Id:\tName"
        for ind in ${!source_long_names[@]}; do
            short_name=$(get_short_name ${source_long_names[$ind]})
            echo -e "${source_ids[$ind]}:\t$short_name"
        done
        read choice
         if [[ ! " ${source_ids[*]} " =~ " ${choice} " ]]; then
            echo -e "Invalid Selection \n"
        else
            pactl set-default-source $choice
            selection=$(pactl get-default-source)
            echo Source Selected: $selection
            break
        fi       
    done
}

main
