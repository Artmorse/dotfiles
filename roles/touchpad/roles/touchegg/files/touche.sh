#!/bin/bash

get_workspace_number(){
    return $(i3-msg -t get_workspaces | jq '.[] | select(.focused == true) | .num')
}

get_next_workspace_number() {
    get_workspace_number
    n=$?
    if [ $n -ne 10 ]
    then
        return "$(expr ${n} + 1)"
    else
        return ${n}
    fi
}

get_previous_workspace_number() {
    get_workspace_number
    n=$?
    if [ $n -ne 1 ]
    then
        return "$(expr ${n} - 1)"
    else
        return ${n}
    fi
}

switch_to_workspace() {
    i3-msg workspace number $1
}

switch_to_next_workspace() {
    get_next_workspace_number
    switch_to_workspace $?
}

switch_to_previous_workspace() {
    get_previous_workspace_number
    switch_to_workspace $?
}


case "$1" in
    prev) switch_to_previous_workspace;;
    next) switch_to_next_workspace;;
esac
