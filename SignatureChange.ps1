#This script is in Memory of The White Rabbit's py script. ~JB

#Asks the end-user exactly where we are about to write to a bunch of .htm files.
$location = Read-Host "Please enter the EXACT location of the .htm files."

#Sets the location which the end-user inputted for the next command
Set-Location $location

#Count the number of .htm files.

#Searches the directory for all .htm then iterates through reading each file and replace where needed.
Get-ChildItem -Filter *.htm | ForEach-Object -Process `
{
    (Get-Content $_) -Replace 'String to Search For', 'String to Write in place of the Searched String' | Set-Content $_
}    

#The End
