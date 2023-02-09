$Folder1 = 'Program Files (x86)\Canon Electronics\DRC225'
$Folder2 = 'Program Files (x86)\Dynamsoft\Dynamic Web TWAIN SDK 15.3'
$InjFolder = "Users\$env:UserName\Program Files\WorkspaceOne\Canon Scanner Driver"
$Exe1 = "Users\$env:UserName\Program Files\WorkspaceOne\Canon Scanner Driver\DR-C225Driver\Setup.exe"
$Exe2 = "Users\$env:UserName\Program Files\WorkspaceOne\Canon Scanner Driver\DynamicWebTWAIN15.3.exe"

#UnZip Injected Folder

Expand-Archive -Path C:\$InjFolder\Drivers.zip -DestinationPath C:\$InjFolder

#Run the executable for each of the files
if ((Test-Path -Path C:\$Folder1) -eq $false){
    Start-Process -FilePath C:\$Exe1 -Wait -ArgumentList "/S /v/qn"
}

if ((Test-Path -Path C:\$Folder2) -eq $false) {
    Start-Process -FilePath C:\$Exe2 -Wait -ArgumentList "/S /v/qn"
}