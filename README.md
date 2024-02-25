# PowerShell recursive folder creation in network drive
Using a PowerShell script for the recursive creation of folders in a remote network drive
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
