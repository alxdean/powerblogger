
New-Item HKLM:SOFTWARE/Policies/Microsoft/FVE
Set-Location HKLM:SOFTWARE/Policies/Microsoft
Set-ItemProperty FVE -Name UseAdvancedStartup -Value 1 #enables more encrytion options
Set-ItemProperty FVE -Name EnableBDEWithNoTPM -Value 1 #allows for password only encryption

manage-bde -protectors -add d: -password -recoverypassword #enables ecryption with a password, but does not activea it yet
manage-bde -on d: -usedspaceonly #activates encryption on the drive

manage-bde -status #shows if bit locker is active on any parition


<# for unlocking the drive use:

manage-bde -unlock d: -password 

#>