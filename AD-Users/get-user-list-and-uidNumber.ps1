Get-ADUser -filter * -Properties * | select SamAccountName,uidNumber | sort -Property SamAccountName
Get-ADUser -filter * -Properties * | select SamAccountName,uidNumber | sort -Property uidNumber
