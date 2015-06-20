# Amina Copy File Script
This is a script to help Amina to copy a bunch o files from one place to another place. 

# Usage
  0. Obtain script via installation instructsion below
  0. Prepare data file according to instructions below
  0. In a terminal run:

    ruby /path/to/copy_files.rb /path/to/data.txt


# Installation
This script is basically just one ruby file that that will be executed from the command line.  It reads a data file that contains the necessary info to copy files from and to the right place. 

This doesn't need to be "installed" per se, but it does need to be copied to your computer. I recommend copying this whole project to your computer so you can see it in action, and mimic the setup anywhere you need to use this. We should probably be on Google hangouts screenshare when you "install".

## Installation: Option 1
If you can navigate in your terminal to a place where you want to install these files, do that and run 

    git clone git@github.com:pixelterra/amina.copy_files.git

## Installation: Option 2

Use the Download Zip button on this page: https://github.com/pixelterra/amina.copy_files

# Data File Format
Take a look at the data.txt file in this repository, and just mimic that. Basically:

* It is a PLAIN TEXT file (not word, or rtf, or xls)
* You can use any plain text editor to edit this (like TextEdit)
* The 1st line is the FROM directory
* The 2nd line is the TO directory
* Every subsequent line is a file to copy from FROM to TO
