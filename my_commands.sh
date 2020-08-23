#!/bin/bash

project_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

function create() {
    echo "$project_path"
    python $HOME/projects/caiquan/create.py
    
}
