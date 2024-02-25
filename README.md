# PowerShell-recursive-folder-creation-in-network-drive
Using a PowerShell script recursive folder creation in network drive
## Declare the Network drive
Use the `Net` command to declare both the **Network Drive** letter (in this case T) and the **Path**<br>
## Change to home and set Execution Policy
Be sure that your working directory is not System32 because it has some restrictions that you want to avoid<br>
Changing to you **Home** is no a bad idea,<br>
You will also need to **Bypass** the Execution Policy and finally a testing the command locally 
![powershell-step1](https://github.com/danielurra/PowerShell-recursive-folder-creation-in-network-drive/assets/51704179/27abee11-cf87-4c91-9e90-dcddf32a2d73)<br>
