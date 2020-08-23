#!/bin/bash

project_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

function create() {
    python $HOME/projects/$proj_name/create.py
    
}
