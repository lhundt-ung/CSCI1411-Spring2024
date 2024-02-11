#! /bin/bash
echo "Who are you?"
read name
#echo $name

if [ "$name" = "Neo" ]; then
    MESSAGE="Wake up, $name"
else
    MESSAGE="Hey, you're not Neo"
fi


echo $MESSAGE   #Notice the variable (Global vs Local) 
#echo $#