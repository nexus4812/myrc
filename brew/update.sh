MY_FILE=$(cd $(dirname $0); pwd)/brew.txt
truncate $MY_FILE --size 0 && brew leaves >> $MY_FILE