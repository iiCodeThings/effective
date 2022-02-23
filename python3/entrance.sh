#!/bin/bash

function load_venv()
{
    venv=".venv/bin/activate"

    if [ -f $venv ]; then
        source $venv
    fi
}


function create_venv()
{
    venv=".venv/bin/activate"
    python3 -m venv .venv
    source $venv
}

function venv()
{
    case $1 in
        "-c")
            create_venv
            ;;
        "-l")
            load_venv
            ;;
        *)
            echo venv -l: load default virtualenv
            echo venv -c: create virtual environment
            ;;
        esac
}