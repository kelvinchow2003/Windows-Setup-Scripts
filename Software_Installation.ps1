#Kelvin Chow
#Windows Compuuter basic software installation
#google setup 
$DriveLetter = Read-Host -Prompt "Enter the drive letter"
$DestinationChrome = $DriveLetter + ":\scripts\Applications\ChromeStandaloneSetup64.exe"
$DestinationEarth = $DriveLetter + ":\scripts\Applications\GoogleEarthProSetup.exe"
$DestinationJava = $DriveLetter + ":\scripts\Applications\jre-8u371-windows-x64.exe" 
$DestinationXChange = $DriveLetter + ":\scripts\Applications\PDF_XchangeEditorV10.x64.msi"
$DestinationOffice = $DriveLetter + ":\scripts\Applications\OfficeSuite001.msi"
$DestinationFortnite = $DriveLetter + ":\scripts\Applications\FortiClientVPNOnlineInstaller-latest.exe"
$DestinationExclaimer = $DriveLetter +  ":\scripts\Applications\Exclaimer.CloudSignatureUpdateAgent.Install (1).msi"
$DestinationAdobe = $DriveLetter + ":\scripts\Applications\AdobeReaderDC64.exe"
$DestinationNuance = $DriveLetter + ":\scripts\Applications\Nuance PDF\Setup.exe"
# Start each process one at a time and wait for it to complete before moving to the next one
Start-Process -FilePath  $DestinationChrome -Wait
Start-Process -FilePath  $DestinationEarth -Wait
Start-Process -FilePath  $DestinationJava -Wait
Start-Process -FilePath  $DestinationXChange -Wait
start-Process -FilePath  $DestinationOffice -Wait
Start-Process -FilePath  $DestinationFortnite -Wait
Start-Process -FilePath  $DestinationExclaimer -Wait
Start-Process -FilePath  $DestinationAdobe -Wait
Start-Process -FilePath  $DestinationNuance -Wait

$DestinationBackup = $DriveLetter + ":\scripts\App backup\AdobeReaderDC64.exe"
$DestinationApps = $DriveLetter + ":\scripts\Applications"
#Copies the Adobe reader exe file since it removes itself whenever it runs sucessfully.
Copy-Item -Path $DestinationBackup  -Destination $DestinationApps


