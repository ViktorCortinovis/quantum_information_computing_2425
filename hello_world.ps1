# First create the file "hello_world.ps1" either directly in VScode or by running in powershell the following:
# >> New-Item -Path "C:\QuantumIAC\hello_world.ps1" -ItemType File

#1 - Create a folder.
$folderName = "PowerShellFolder"    # PowerShell dynamically assigns a type to a variable depending on the value assigned to it.
New-Item -ItemType Directory -Path $folderName  
Write-Host "Folder '$folderName' created successfully!"

#2 - Move the file into the folder.
Move-Item .\CreateFolder.ps1 -Destination $folderName

#3 - Sets as the `MYPATH` environment variable the current directory name;
# To set an enviroment varible use $Env:<varible_name> = <directory-name>
$Env:MYPATH = (Get-Location).Path   # (Get-Location).Path gets the PATH of the created folder

#4.- Prints the environmental variable on terminal; (Using "Write-Host")
Write-Host "The enviroment varible is: " $Env:MYPATH

#5 - Prints the content of the folder on terminal;
$FolderContent = Get-ChildItem $Env:MYPATH   # Get-ChildItem: Retrieves the files and subfolders in the specified directory.
Write-Host "The content of the folder is: " $FolderContent
#6 - Goes back to the previous folder (NOT NEEDED since we never moves down in to the newly created folder...);
#Set-Location ..     # ".." represents the parent folder to the current one.  

#7 - Prints the file `error.txt` on terminal.
Write-Host "The error.txt file contains the following: "
Get-Content -Path error.txt