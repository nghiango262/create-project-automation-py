#!/bin/bash
# thuc thi lenh: . 
# Save duong dan hien tai de sau khi thu thi lenh se tra lai thu muc lam vieec hien tai
current_path=$( pwd -P)
project_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )


while getopts "n:b:c:" opt
do
   case "$opt" in
      n ) # n: name -- Ten project
            proj_name="$OPTARG"
             echo "Ten Proj la $proj_name"
            ;;
      b ) parameterB="$OPTARG" ;;
      c ) parameterC="$OPTARG" ;;
      ? ) 

   esac
done


run_python() {
    ls
    source run.sh
    create
}

create_init() {
    echo "Thu muc hien tai"
    echo "$project_path"

    #chuyen den thu muc projects
    cd "$HOME/projects"

    #Tao thu muc procet
    echo "Tao thu [$proj_name]"

    python -m venv "$proj_name"


    
    #chuen den thu muc project
    echo "Chuyen den duong dan $HOME/projects/$proj_name"
    cd "$HOME/projects/$proj_name"

    source Scripts/activate

    pip install requests

    wget -O run.sh https://raw.githubusercontent.com/nghiango262/create-project-automation-py/master/my_commands.sh

    wget -O main.py https://raw.githubusercontent.com/nghiango262/create-project-automation-py/master/create.py

    run_python
    
    
    #source my_commands.sh

    cd "$current_path"

}



create_init