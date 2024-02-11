#!/bin/bash

function localmessage
{
	local MESSAGE="Hi there, we're inside the function"
	#MESSAGE="Hi there, we're inside the function"
	echo $MESSAGE
}

MESSAGE="Hello world, we're outside the function"
echo $MESSAGE

#localmessage
#echo $MESSAGE
