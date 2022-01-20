# Read password from Secure file
$creds = Import-Clixml -Path /root/powershell/benorpass.cred

# Scope list in DHCP server.
Invoke-Command -ComputerName "DOMAIN" -Credential $creds -ScriptBlock { Get-DhcpServerv4Scope | Select-Object -Property Name, ScopeId, SubnetMask, StartRange, EndRange, Description | ft -Autosize }

# Get the list of all free IP's in each Scope.
Invoke-Command -ComputerName "DOMAIN" -Credential $creds -ScriptBlock { Get-DhcpServerv4Scope | select ScopeID | ForEach-Object { Write-Host "-----------------"; Write-Host "Scope", $_.ScopeId; Write-Host "-----------------"; Get-DhcpServerv4FreeIPAddress -ScopeId $_.ScopeId -NumAddress 1024 -ea silentlyContinue -WarningAction silentlyContinue }}

# Get the list of all free IP's in each Scope and Limt the search in the scope.
Invoke-Command -ComputerName "DOMAIN" -Credential $creds -ScriptBlock { Get-DhcpServerv4FreeIPAddress -ScopeId 192.168.113.0 -NumAddress 20 -StartAddress 192.168.113.51 -EndAddress 192.168.113.100 }
Invoke-Command -ComputerName "DOMAIN" -Credential $creds -ScriptBlock { Get-DhcpServerv4FreeIPAddress -ScopeId 192.168.115.0 -EndAddress 132.76.115.20 -NumAddress 10 -StartAddress 192.168.115.100 }
