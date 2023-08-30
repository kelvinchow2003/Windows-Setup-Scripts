# Install the PSWindowsUpdate module
echo 'Y' | powershell Install-Module -Name PSWindowsUpdate -Force

# Check for Windows updates
Get-WindowsUpdate
echo 'Windows update check success'
# Install Windows updates
echo 'Y' | powershell Install-WindowsUpdate -AcceptAll -AutoReboot
echo 'Windows is updating'

start-sleep -Seconds 10
# uninstall the PSWindows update module
Uninstall-Module PSWindowsUpdate
