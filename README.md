# PowerShell recursive folder creation in network drive
Using a PowerShell script for the recursive creation of folders in a remote network drive
## Run PowerShell ISE as an administrator
![run-as-admin](https://github.com/danielurra/PowerShell-recursive-folder-creation-in-network-drive/assets/51704179/332e8ac9-bec7-46f9-a140-c5b23e7d8830)<br>
## Declare the Network drive
Use the `Net` command to declare both the **Network Drive** letter (in this case T) and also its **Path**<br>
```powershell
net use T: \\192.168.1.122\shared_folder
```
## Change to Home and set Execution Policy
Be sure that your working directory is not **System32** because it has some restrictions that you want to avoid<br>
Changing to your **Home** directory is no a bad idea,<br>
You will also need to **Bypass** the Execution Policy<br>
Testing you main command locally is something useful if something goes wrong you can isolate the issue quickly.<br>
![powershell-step1](https://github.com/danielurra/PowerShell-recursive-folder-creation-in-network-drive/assets/51704179/27abee11-cf87-4c91-9e90-dcddf32a2d73)<br>
## Grab the code
As you can see the code below is a simple version that only focus in the creation of the folders by using the data<br>
inside a `CSV` file, an enhanced version could for example test if the folder already exist.<br>
```powershell
Clear
$CSV = Import-Csv -Path "C:\Users\user\Documents\data.csv"
$i = 0;
ForEach ($Row in $CSV) {
    $NAME_RAM = $($Row.'NOMBRE');
    $FolderPath = "T:\_Amigos\$NAME_RAM";
    #Create a New Folder
    New-Item -ItemType Directory -Path $FolderPath
    $i += +1;
    write-Host " $i Folders have been created.." -ForegroundColor Green -BackgroundColor DarkGreen
}
```
![powershell-step1](https://github.com/danielurra/PowerShell-recursive-folder-creation-in-network-drive/assets/51704179/3b36212f-8fb7-43a4-b88a-7ff5fa52e4fa)<br>
## The CSV file
The names of the folders you want to recursively create must be under a sigle column inside a `CSV` (Comma Separated Values) file.<br>

