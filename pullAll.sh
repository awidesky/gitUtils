#!bash

# bashutils로 하기... dir인지도 확인해야 함
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
for d in "$SCRIPT_DIR"/* ; do
    echo Pulling $d ...
    cd $d
    git pull --all --ff-only
    echo  
    cd ..
done 
echo done!
read -p "Press enter to continue"