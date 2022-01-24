#Get-DnsServerResourceRecord -ZoneName "incpm.weizmann.ac.il" | Select-Object -Property HostName, {$_.RecordData.Ipv4address} | sort-object -Property {$_.RecordData.Ipv4address -as [Version]} | ft # | Sort-Object -Property {$_.IPv4Address -as [Version]} | sort-object -Property {$_ -as [Version] } | ft

Get-DnsServerResourceRecord -ZoneName "incpm.weizmann.ac.il" -RRType "A" | select HostName,RecordType,Timestamp,TimeToLive,@{Name='RecordData';Expression={$_.RecordData.IPv4Address.ToString()}} | sort-object -Property { $_.RecordData -as [Version] }| ft -autosize
# HostName                  RecordType Timestamp            TimeToLive      RecordData
# --------                  ---------- ---------            ----------      ----------
