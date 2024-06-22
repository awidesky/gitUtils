#!bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
git config --global user.name "Eugene Hong"
git config --global user.email "awidesky@naver.com"
git config --global alias.lograph "log --oneline --graph --all"
for d in "$SCRIPT_DIR"/*; do
    git config --global --add safe.directory "`cygpath -m $d`"
done 
echo done!
