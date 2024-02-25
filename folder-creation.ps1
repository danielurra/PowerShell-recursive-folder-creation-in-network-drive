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