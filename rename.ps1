# Prompt the user to enter the old drive letter
$oldDriveLetter = Read-Host -Prompt "Enter the old drive letter"

# Specify the desired new drive letter
$newDriveLetter = "F"  # Replace with the desired new drive letter

# Get the current drive
$drive = Get-WmiObject -Class Win32_Volume | Where-Object { $_.DriveLetter -eq $oldDriveLetter }

# Check if the drive was found
if ($drive -ne $null) {
    # Change the drive letter
    $params = @{
        DriveLetter = $newDriveLetter
    }
    
    $null = $drive.InvokeMethod("SetLetter", $params, $null)
    
    Write-Host "Drive letter changed from $oldDriveLetter to $newDriveLetter."
} else {
    Write-Host "Drive letter $oldDriveLetter not found."
}
