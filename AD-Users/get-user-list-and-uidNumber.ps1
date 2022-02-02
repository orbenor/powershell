Get-ADUser -filter * -Properties * | select SamAccountName,uidNumber | sort -Property SamAccountName
Get-ADUser -filter * -Properties * | select SamAccountName,uidNumber | sort -Property uidNumber

Get-ADUser -Filter * -Properties SamAccountName,uidNumber | Select-Object SamAccountName,uidNumber | Where-Object {$_.uidNumber -ne $null} | sort uidNumber  |ft -AutoSize
