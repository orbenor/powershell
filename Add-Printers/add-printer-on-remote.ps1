$creds = Import-Clixml -Path /root/powershell/benorpass.cred
Invoke-Command -ComputerName COMPUTERNAME -Credential $creds -FilePath /root/powershell/printer-list-remote.ps1
#
#
# 

# printer-list-remote.ps1
# Get-ChildItem -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Print\Connections' | 
# ForEach-Object -Process {
#    $PSItem |
#    Get-ItemProperty -Name Printer |
#    Select-Object -ExpandProperty Printer
# }
