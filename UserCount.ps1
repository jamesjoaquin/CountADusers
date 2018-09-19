#This prompts for an AD group, outputs a count of users in the group, and prompts to run again or quit#

do {


$group = Read-Host -Prompt group
$users = Get-ADGroupMember "$group" | Where objectclass -eq "user"
$users.count 

$response = Read-Host "Again?"

}

while ($response -eq "y")

#james garside, 2018#