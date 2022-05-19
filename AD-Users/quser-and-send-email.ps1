# https://randomnote1.github.io/powershell/use-convertfrom-csv-to-convert-quser-output-to-powershell-object/
$secpasswd = ConvertTo-SecureString 'PASSWORD' -AsPlainText -Force
$mycreds = New-Object System.Management.Automation.PSCredential ('DOAMIN\USERNAME', $secpasswd)

$quserResult = quser 2>&1


$quserRegex = $quserResult | ForEach-Object -Process { $_ -replace '\s{2,}',',' }

$quserObject = $quserRegex | ConvertFrom-CSV


$sam = $userSession.USERNAME

Get-ADUser -Credential $mycreds $userSession.USERNAME -Properties EmailAddress| select EmailAddress | ft -hide |  Out-String -outvariable ToSend
write-host $ToSend

Send-MailMessage -smtpserver smtp.example.com -To $ToSend -From benor.or@example.co.il -Subject Please' 'Ignore' 'JUST' 'A' 'TEST'---'Please' 'reboot' 'your' 'iView' 'VM' '$env:computername -Body It' 'is' 'for' 'Anti' 'Virus' 'update`n`nIT' 'Department
