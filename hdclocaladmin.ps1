$Password = Read-Host -AsSecureString
New-LocalUser "HDCLocalAdmin" -Password $Password -FullName "Help Desk Computers LocalAdmin" -Description "HelpDesk access"
Add-LocalGroupMember -Group "Administrators" -Member "HDCLocalAdmin"