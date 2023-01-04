#!/bin/sh

get_short_name(){
    long_name=$1
    short_name=$(pactl list sinks | grep -A 1 -i "Name: $long_name" | grep -i "Description: " | awk '{$1=""; print $0}')
    echo $short_name
}

main(){
    sink_ids=( $(pactl list sinks short | awk '{print $1}') )
    sink_long_names=( $(pactl list sinks short | awk '{print $2}') )

    while : ; do
        echo Select by Id
        echo -e "Id:\tName"
        for ind in ${!sink_long_names[@]}; do
            short_name=$(get_short_name ${sink_long_names[$ind]})
            echo -e "${sink_ids[$ind]}:\t$short_name"
        done
        read choice
         if [[ ! " ${sink_ids[*]} " =~ " ${choice} " ]]; then
            echo -e "Invalid Selection \n"
        else
            pactl set-default-sink $choice
            selection=$(pactl get-default-sink)
            echo Sink Selected: $selection
            break
        fi       
    done
}

main
