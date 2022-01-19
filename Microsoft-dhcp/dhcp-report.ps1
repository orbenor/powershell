$creds = Import-Clixml -Path /root/powershell/benorpass.cred
# Scope list in DHCP server.
Invoke-Command -ComputerName "domain01" -Credential $creds -ScriptBlock { Get-DhcpServerv4Scope | Select-Object -Property Name, ScopeId, SubnetMask, StartRange, EndRange, Description | ft -Autosize }

Invoke-Command -ComputerName "domain01" -Credential $creds -ScriptBlock { Get-DhcpServerv4Scope | Select-Object -Property ScopeId | ft -hide } | out-file -filepath /root/powershell/dhcp-scope.csv
write-host $A
# FREE ip in DOMAIN
Invoke-Command -ComputerName "domain01" -Credential $creds -ScriptBlock { Get-DhcpServerv4Scope | select ScopeID | ForEach-Object { Get-DhcpServerv4FreeIPAddress -ScopeId $_.ScopeId -NumAddress 1024 -ErrorAction SilentlyContinue }}
