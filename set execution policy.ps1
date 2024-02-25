#Change Directory
cd ~
#F8
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
# Network drive
net use T: \\192.168.1.122\shared_folder
# Test Local drive D: 
New-Item -ItemType Directory -Path "D:\Test\99999-RICHARD\"