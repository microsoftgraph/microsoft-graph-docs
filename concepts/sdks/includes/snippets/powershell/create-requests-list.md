<!-- markdownlint-disable MD041 -->

```PowerShell
# GET https://graph.microsoft.com/v1.0/users/{user-id}/messages?$select=subject,sender&
# $filter=<some condition>&orderBy=receivedDateTime

$userId = "71766077-aacc-470a-be5e-ba47db3b2e88"

# -Sort is equivalent to $orderby
# -Filter is equivalent to $filter
$messages = Get-MgUserMessage -UserId $userId -Property Subject,Sender `
-Sort ReceivedDateTime -Filter "some condition"
```
