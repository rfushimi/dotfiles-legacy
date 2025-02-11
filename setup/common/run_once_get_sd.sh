#!/bin/bash

if [[ ! -d $HOME/src/scripts/.git ]]; then
    mkdir -p $HOME/src/scripts
    ln -s $HOME/src/sd scripts
    git clone git@github.com:rfushimi/scripts.git $HOME/src/scripts
fi
