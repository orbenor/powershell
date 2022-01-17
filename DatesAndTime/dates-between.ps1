write-host ("1------------------------------")
$policy1 = get-date "1/29/2021" 
$policy2 = get-date "8/2/2021" 
write-host ("2------------------------------")

$policy1.ToString('d/M/yyyy HH:mm')
$policy2.ToString('d/M/yyyy HH:mm')

$policy3 = get-date "1/23/2021"
$policy4 = get-date "2/26/2021"

$policy5 = get-date "11/01/2021"
$policy6 = get-date "08/02/2021"

#$ExpDate = Get-ADUser -Identity $user –Properties "DisplayName", "msDS-UserPasswordExpiryTimeComputed" |
    Select-Object -Property "Displayname",@{Name="ExpiryDate";Expression={[datetime]::FromFileTime($_."msDS-UserPasswordExpiryTimeComputed")}}
    $DTR  = $ExpDate.expiryDate


#if(($DTR -ge $Policy1) -and ($DTR -le $policy2)){
    
# Send Email Message
write-host ("3------------------------------")

$a=$policy2-$policy1
write-host $policy1.ToString('d/M/yyyy'), $policy2.ToString('d/MM/yyyy')
write-host $a.TotalDays

#$a=$policy4-$policy3
#write-host $a.totaldays
