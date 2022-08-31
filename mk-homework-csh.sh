
#
#
#


#
# create input file and delete the old one
#
tgt_file=Christines_Homework_`date +%d%b%y`.txt

if test -f $tgt_file; then rm -f $tgt_file; fi

#
# email header
#
echo "
Hi, Christine, it is time for some math homework
"  >> $tgt_file


#
# pull 10 random words
#
echo "# Sight Words (Vocabulary" >> $tgt_file
shuf -n10 1000_most_frequent_words.txt | cat -n >> $tgt_file
#
# generate addition and substraction problems
#
echo " " >> $tgt_file
echo "# Addition and Subtraction" >> $tgt_file
for i in `seq 1 3`; do echo "    $i.  "$((RANDOM%999))"+"$(($RANDOM%999))"=" >> $tgt_file; done
for i in `seq 1 3`; do echo "    $(($i+3)).  "$((RANDOM%999))"-"$(($RANDOM%99))"=" >> $tgt_file; done


#
# email footer
#
echo " " >> $tgt_file
echo "
Good luck!  :)
Dad xoxo
"  >> $tgt_file
