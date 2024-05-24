# Denied Types for Role Assignments

This policy defines an deny list of types for role assignments that can be used in IAM

## Deploy with Azure Portal

![Deploy to Azure](https://aka.ms/deploytoazurebutton)(https://portal.azure.com/#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fjudif%2Faz-policies%2Fmain%2Fsamples%2FAuthorization%2Fdenied-types-role-assignments%2Fazurepolicy.json)

## Deploy with CLI

````cli

az policy definition create --name 'denied-types-role-assignments' --display-name 'Denied Types for Role Assignments' --description 'This policy defines an deny list of types for role assignments that can be used in IAM' --rules 'https://raw.githubusercontent.com/judif/az-policies/main/samples/Authorization/denied-types-role-assignments/azurepolicy.rules.json' --params 'https://raw.githubusercontent.com/judif/az-policies/main/samples/Authorization/denied-types-role-assignments/azurepolicy.parameters.json' --mode All

az policy assignment create --name <assignmentname> --scope <scope> --policy "allowed-role-definitions"

````
