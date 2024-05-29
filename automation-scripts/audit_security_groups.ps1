Connect-AzureAD -TenantId "..." -ApplicationId "..." -CertificateThumbprint "..."

# Get a list of all users in the tenant
$groups = Get-AzureADGroup -SearchString "group-"

#Loop through each user and get their group memberships
$output += "Group,User Name,Email,Object Id,Type," + "`n"
foreach ($group in $groups) {
  #Get the user's group memberships
  $users = Get-AzureADGroupMember -ObjectId $group.ObjectId

  #Add the user's display name and group memberships to the output 
    foreach ($user in $users) { 
      $output += "$($group.DisplayName),$($user.DisplayName),$($user.UserPrincipalName),$($user.ObjectId),$($user.ObjectType)," + "`n" } 
    }

#Save the output string to a text file
$output 
#| Out-File -FilePath "C:\..."