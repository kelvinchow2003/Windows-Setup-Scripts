
$newComputerName = Read-Host "Enter the Computer Name: "
$newDomainName = Read-Host "Enter the Domain Name: "
#Set local computer name
Rename-Computer -NewName $newComputerName -Force -Restart
#Join the domain
Add-Computer -DomainName $newDomainName -Restart44