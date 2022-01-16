$datenext1=Get-Date (Get-Date).AddMonths(+1) -f M/yyyy
$datenext2=Get-Date (Get-Date).AddMonths(+2) -f M/yyyy
$datenext3=Get-Date (Get-Date).AddMonths(+3) -f M/yyyy
write-host $datenext1
write-host $datenext2
write-host $datenext3
Import-Excel -Path /zfs_volume/documents/powershell/pepole.xlsx | Select-Object -Property Name,date | where-object {$_.date -like "*/$datenext1*" -or $_.date -like "*/$datenext2*" -
or $_.date -like "*/$datenext3*" }

# Name	date
# Igal	16/1/2021
# Shason	29/1/1971
# Ezra	29/7/2021
# Sason	27/2/2022
# Benson	16/3/2023
# Microsoft	23/3/2022
# Eldan	23/3/2022
# Redhat	24/4/2022
# the output will be.
# ==================================
# Name      date
# ----      ----
# Sason     27/2/2022
# Microsoft 23/3/2022
# Eldan     23/3/2022
# Redhat    24/4/2022
