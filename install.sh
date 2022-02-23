#!/bin/bash

if [ -d ~/.effective ]; then
    echo "source ~/.effective/main.sh" >> ~/.bash_profile
else
    git clone git@github.com:iiCodeThings/effective.git ~/.effective
    echo "source ~/.effective/main.sh" >> ~/.bash_profile
fi
