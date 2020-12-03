<!-- markdownlint-disable MD041 -->

```PowerShell
# GET https://graph.microsoft.com/v1.0/users/{user-id}?$select=displayName,jobTitle

$userId = "71766077-aacc-470a-be5e-ba47db3b2e88"

# The -Property parameter causes a $select parameter to be included in the request
$user = Get-MgUser -UserId $userId -Property DisplayName,JobTitle
```
