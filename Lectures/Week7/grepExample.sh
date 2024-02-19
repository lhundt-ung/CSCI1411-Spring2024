#! /bin/bash
# this example file requires the Kennedy Rice Speech which can be retrieved 
# from http://er.jsc.nasa.gov/seh/ricetalk.htm

#escape special characters with \
#this will cause bash to interpret the charaters litterally

#File = KennedyRiceSpeech.txt

# EXAMPLE 1
echo "How many times is the word 'moon' mentioned in Kennedy's Rice University Speech?"
grep "moon" KennedyRiceSpeech.txt -c

# EXAMPLE 2
echo "How many three letter words appear in the document?"
grep '\<...\>' KennedyRiceSpeech.txt -c

# EXAMPLE 3
echo "Print out the number of lines that contain the word 'space' OR 'earth'"
grep -e "space" -e "earth" KennedyRiceSpeech.txt -c

# EXAMPLE 4
echo "Print out the number of lines that contain the word 'we' AND 'this'"
grep -e 'we' KennedyRiceSpeech.txt  | grep -e "this" -c

# EXAMPLE 5
echo "Print the line numbers of all blank lines"
grep -n '^$' KennedyRiceSpeech.txt
