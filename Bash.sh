#! /usr/bin/bash


#COMPARE
diff -u FILE1 FILE2 #compares files, -u for line number

#ALIAS
alias cp='cp -i'
unalias cp

# COPY
cp ORIG DEST
cp -i ORIG DEST #asks whether to overwrite existing DEST of not
cp -n ORIG DEST #never overwrite existing DEST of not
cp -R ORIG DEST #recursively (all files in local file + subfolders)

# ADVANCED COPY
rsync -av --exclude=".*" ORIG DEST #ignore all hidden folders and subfolders

# IF EXISTS
if [ ! -e "$file" ]; then; else; fi #any type
if [ ! -f "$file" ]; then; else; fi #file
if [ ! -d "$file" ]; then; else; fi #directory

# VALUE IN LIST
case $choice in; a|b|c) echo ok;; *) echo ko;; esac
