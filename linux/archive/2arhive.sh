#!/bin/bash
# Important. This script depends on the 7z archiver. Please install it to your system.
# This script arhiving files from source directory to destanation, using 7z archiver.
# The script can make subdirectory in the destanation, if you set option 'make_subdir'.
# The name of arhive file has current date and preffix and suffix. You can may set their.
# You can set password.
# You can set other options, please see 7z archiver documentation.
#
# For Example:
# my_arhive-2017_06_17-04_58_34-dos.7z


# --- You Configuration ---

#Make subdirectory, script create subdirectory in destanation directory
#for exammple: make_subdir=arhive
make_subdir=

#Peffix is the first part of name arhive
#for exammple: preffix=my_arhive
preffix=

#Suffix is last part of name arhive
#for exammple: suffix=dos
suffix=

#Set you source path
#for example  sourcePath=/home/user/my_files/
sourcePath=

#Set you destanation
#To this path will be add subdir 
#for example  distPath=/home/user/my_arhive/
distPath=

#Set exclude files
my_exclude=

#Set password to arhive
my_passw=

#Set 7z archiver options
param='a -r'
#--------------------------


current_date=$(date +%Y_%m_%d-%H_%M_%S)
exclude_key=-x
exlude_user=$my_exclude
spacer=-
extension=.7z

arhiveFileName=$preffix$spacer$current_date$spacer$suffix$extension

echo $arhiveFileName

echo '************************************************'
echo '*               Make Arhive                    *'
echo '*                                              *'
echo '************************************************'
echo '* source DIR        :  '$sourcePath            
echo '* distanation DIR   :  '$distPath$make_subdir
echo '* arhive File Name  :  '$arhiveFileName
echo '****************** START ***********************'

mkdir -p $distPath$make_subdir
7z $param $distPath$make_subdir/$arhiveFileName $sourcePath
