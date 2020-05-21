#!/bin/sh
# Exercise 1.7
# Script to fetch url based on user input
echo Input website: ;
read website;
echo Searching...;
sleep 1:
curl http://$website
