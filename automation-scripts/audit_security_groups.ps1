Connect-AzAccount -identity

# Get a list of all users in the tenant
$groups = Get-AzADGroup -SearchString "group-"

#Loop through each user and get their group memberships
$output += "Group,User Name,Email,Object Id,Type," + "`n"
foreach ($group in $groups) {
  #Get the user's group memberships
  $users = Get-AzADGroupMember -ObjectId $group.Id

  #Add the user's display name and group memberships to the output 
    #$output += "$($group.DisplayName);"
    foreach ($user in $users) { 
    	$output += "$($group.DisplayName),$($user.DisplayName),$($user.UserPrincipalName),$($user.Id),$($user.ObjectType)," + "`n" } 
    }

#Save the output string to a text file
$output 
#| Out-File -FilePath "C:\Users\jufreiberger\Downloads\UsersAndGroups.csv"