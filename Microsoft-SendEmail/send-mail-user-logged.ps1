$logged=((Get-WMIObject -ClassName Win32_ComputerSystem).Username).Split('\')[1]
Get-ADUser -Identity $logged -Properties EmailAddress | Select-Object EmailAddress -outvariable To
$a=$To.EmailAddress
$PSEmailServer="smtp.example.com"
Send-MailMessage -To 'user@example.com' -From 'user@example.com' -Subject $a  -Body $a
