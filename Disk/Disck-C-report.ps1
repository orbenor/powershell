$creds = Import-Clixml -Path /root/powershell/benorpass.cred

1..54 | foreach {
		$i="{0:000}" -f $_
		Invoke-Command -ComputerName pc-$i -Credential $creds -ScriptBlock { Get-psdrive c }
	        }
          
# Output
# Name           Used (GB)     Free (GB) Provider      Root                                                              CurrentLocation PSComputerName
# ----           ---------     --------- --------      ----                                                              --------------- --------------
# C                  77.12        122.28               C:\                                                       Users\pmbenor\Documents pc-001
# C                 180.83         18.57               C:\                                                       Users\pmbenor\Documents pc-002
