#!/bin/bash

# creates a file for you

echo "möchten sie:
1: ein file
2: ein directory 
erstellen?";

read choice;

if [ $choice == 1 ]
then
type="file";

echo "what kind of file do you want?
1: .txt
2: .html
3: .sh
";

read filetype;

case $filetype in
1)      filetype=.txt;;
2)      filetype=.html;;
3)      filetype=.sh;;
esac

elif [ $choice == 2 ]
then
type="directory";

else
echo "this input is not valid";
exit 0
fi

echo "please enter a name: "
read name;

if [ -e $name ]
then
echo "this $type already exists"

else
if [ $type == "directory" ]
then
        mkdir $name;
        cd $name;
elif [ $type == "file" ]
then
        touch ${name}${filetype}
        chmod +x ${name}${filetype}
        nano ${name}${filetype}
fi
fi
