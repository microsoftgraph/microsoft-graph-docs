<!-- markdownlint-disable MD041 -->

```PowerShell
# GET https://graph.microsoft.com/v1.0/users/{user-id}/events

$userId = "71766077-aacc-470a-be5e-ba47db3b2e88"
$requestUri = "/v1.0/users/" + $userId + "/events"

$events = Invoke-GraphRequest -Method GET -Uri $requestUri `
-Headers @{ Prefer = "outlook.timezone=""Pacific Standard Time""" }
```
