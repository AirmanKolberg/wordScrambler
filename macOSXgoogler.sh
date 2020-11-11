#!/bin/bash



# -----GENERATE RANDOM INTEGER FOR WORDLIST-----

generate_wordlist() {
	shuf -i 1-466550 -n 1
}



# -----GENERATE TIME REMAINING-----

time_remaining() {
	shuf -i 5-164 -n 1
}



# -----CHOOSES WHICH FUNCTION TO RUN-----

generate_function() {
	shuf -i 1-4 -n 1
}



# -----FIREFOX FUNCTIONS-----

single_word() {
clear
number="$(generate_wordlist)"
word=`cat words.txt | head -$number | tail -1`
time="$(time_remaining)"

	open -a /Applications/Firefox http://google.com/search?q=$word&oq=$word&aqs=firefox
	clear
	read -t $time -p "You have $time seconds to view this word...
	"
	pkill -f chrome
clear
}



double_word() {
clear
number1="$(generate_wordlist)"
number2="$(generate_wordlist)"
word1=`cat words.txt | head -$number1 | tail -1`
word2=`cat words.txt | head -$number2 | tail -1`
time="$(time_remaining)"

	open -a /Applications/Firefox http://google.com/search?q=$word1+$word2&oq=$word1+$word2&aqs=firefox
	clear
	read -t $time -p "You have $time seconds to view these two words...
	"
	pkill -f chrome
clear
}



triple_word() {
clear
number1="$(generate_wordlist)"
number2="$(generate_wordlist)"
number3="$(generate_wordlist)"
word1=`cat words.txt | head -$number1 | tail -1`
word2=`cat words.txt | head -$number2 | tail -1`
word3=`cat words.txt | head -$number3 | tail -1`
time="$(time_remaining)"

	open -a /Applications/Firefox http://google.com/search?q=$word1+$word2+$word3&oq=$word1+$word2+$word3&aqs=firefox
	clear
	read -t $time -p "You have $time seconds to view these three words...
	"
	pkill -f chrome
clear
}



quadruple_word() {
clear
number1="$(generate_wordlist)"
number2="$(generate_wordlist)"
number3="$(generate_wordlist)"
number4="$(generate_wordlist)"
word1=`cat words.txt | head -$number1 | tail -1`
word2=`cat words.txt | head -$number2 | tail -1`
word3=`cat words.txt | head -$number3 | tail -1`
word4=`cat words.txt | head -$number4 | tail -1`
time="$(time_remaining)"

	open -a /Applications/Firefox http://google.com/search?q=$word1+$word2+$word3+$word4&oq=$word1+$word2+$word3+$word4&aqs=firefox
	clear
	read -t $time -p "You have $time seconds to view these four words...
	"
	pkill -f chrome
clear
}



main_function() {
clear
selection="$(generate_function)"

if [ $selection -eq 1 ]
then
	single_word
elif [ $selection -eq 2 ]
then
	double_word
elif [ $selection -eq 3 ]
then
	triple_word
else
	quadruple_word
fi	
clear
main_function
}






# ---------------PROGRAM BEGINS HERE---------------

main_function
