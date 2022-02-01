Get-Content ./duplicate.txt | Group-Object | Where-Object {$_.Count -ge 2}
# 111
# 222
# 333
# 111
# 444
# 444
# 555
# 555
# 111
# 000
