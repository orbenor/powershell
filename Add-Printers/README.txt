root@benoradmin:~/powershell# pwsh -File /root/powershell/print-list-best.ps1 
\\iprinter\iAdmin_Print
\\iprinter\hts_printer
\\iprinter\iprinter-bioit
root@benoradmin:~/powershell# cat add-printer-remote.ps1
$creds = Import-Clixml -Path /root/powershell/benorpass.cred
Invoke-Command -ComputerName myvpc-008 -Credential $creds -scriptblock { RUNDLL32 PRINTUI.DLL,PrintUIEntry /ga /n\\iprinter\iprinter-bioit }
root@benoradmin:~/powershell# cat print-list-best.ps1 
$creds = Import-Clixml -Path /root/powershell/benorpass.cred
Invoke-Command -ComputerName myvpc-008 -Credential $creds -FilePath /root/powershell/printer-list-remote.ps1
root@benoradmin:~/powershell# cat /root/powershell/printer-list-remote.ps1 
# print-list.ps1
Get-ChildItem -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Print\Connections' | 
ForEach-Object -Process {
    $PSItem |
    Get-ItemProperty -Name Printer |
    Select-Object -ExpandProperty Printer
}

# run on remote host
# Invoke-Command -ComputerName myvpc-005 -Credential pmbenor -FilePath ./powershell/print-list.ps1
