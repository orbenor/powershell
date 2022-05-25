md c:\scripts
net use x: \\ishare.example.co.il\it /USER:DOMAIN\user PASSWORD

xcopy x:\path\WindowsTH-KB2693643-x64.msu c:\scripts\

copy x:\scripts\Active_directory\WindowsTH-KB2693643-x64.msu c:\scripts\

wusa c:\scripts\WindowsTH-KB2693643-x64.msu /quiet /norestart
