Get-Content ip-list.txt | Group-Object | Where-Object { $_.Count -gt 1 } | select -ExpandProperty Name
