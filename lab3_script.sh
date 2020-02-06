#!/bin/bash
# Authors : Jack Kelly
# Date: 2/6/2019

#Problem 1 Code:
echo "Enter a File Name:"
read filename

echo "Enter a Regular Expression:"
read regex

echo "Regex Grep"
egrep  $regex $filename

echo "Number of Phone Numbers"
egrep -c '(([0-9]{3})|[0-9]{3})-[0-9]{3}-[0-9]{4}' regex_practice.txt

echo "Number of Emails"
grep -c -e ".*@,*" regex_practice.txt 

echo "Number of 303 phone Numbers"
egrep -c '303-[0-9]{3}-[0-9]{4}' regex_practice.txt

echo "geocities emails"
egrep ".*@geocities\.com" regex_practice.txt >> email_results.txt