$letterArray = "user1","user2","user3"
 foreach ($letter in $letterArray)
 {
    get-aduser $letter -properties SamAccountName, EmailAddress | select SamAccountName, EmailAddress 
 }
