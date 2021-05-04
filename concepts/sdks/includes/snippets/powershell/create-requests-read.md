<!-- markdownlint-disable MD041 -->

```PowerShell
# GET https://graph.microsoft.com/v1.0/users/{user-id}

$userId = "71766077-aacc-470a-be5e-ba47db3b2e88"

$user = Get-MgUser -UserId $userId
```
