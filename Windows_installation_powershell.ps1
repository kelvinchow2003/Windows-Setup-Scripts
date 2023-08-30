a#Kelvin Chow
#July 10, 2023
#Must be ran in adminsitrator powershell
Set-ExecutionPolicy RemoteSigned
# Install the PSWindowsUpdate module
Install-Module -Name PSWindowsUpdate -Force

# Check for Windows updates
Get-WindowsUpdate

# Prompt user to install updates

    # Install Windows updates
    Install-WindowsUpdate -AcceptAll -AutoReboot
    Write-Host "Windows is updating. Your system will reboot automatically if necessary."
    Start-Sleep -Seconds 5


# Uninstall the PSWindowsUpdate module

    Uninstall-Module PSWindowsUpdate -Force
    Write-Host "PSWindowsUpdate module uninstalled."

    Set-ExecutionPolicy undefined