#!/bin/bash

# Install GDrive to support upload some files to Google Drive
cd $HOME
mkdir work
cd work
wget https://github.com/gdrive-org/gdrive/releases/download/2.1.0/gdrive-linux-x64
mv gdrive-linux-x64 g

# Login on Google Drive
echo 'Please input your account and password to login on gdrive'
./g upload
