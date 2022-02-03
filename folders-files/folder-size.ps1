$folders = get-childitem -Directory -path c::\scripts| % { $_.FullName }
write-host ($folders)
foreach ($folder in $folders)
{
#  	get-childItem -path $folder -Recurse 
	write-host ($folder + ':') -nonewline
	(Get-ChildItem $folder -Recurse -ErrorAction SilentlyContinue | Measure-Object -Property Length -Sum -ErrorAction SilentlyContinue).Sum / 1GB
}
