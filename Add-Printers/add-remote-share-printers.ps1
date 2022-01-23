Invoke-Command -ComputerName mypc-001 -Credential pmbenor -scriptblock { RUNDLL32 PRINTUI.DLL,PrintUIEntry /ga /n\\SERVER\PRINTER_NAME }
