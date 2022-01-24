# print-list.ps1
Get-ChildItem -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Print\Connections' | 
ForEach-Object -Process {
    $PSItem |
    Get-ItemProperty -Name Printer |
    Select-Object -ExpandProperty Printer
}

# run on remote host
# Invoke-Command -ComputerName myvpc-005 -Credential pmbenor -FilePath ./powershell/print-list.ps1
