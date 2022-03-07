 gc file.txt | %{ $_.Split(',')[0]; }
 
 # ========== file ========== 
 # a,1
 # 2,1
 # output will be
 a
 2
 
 
