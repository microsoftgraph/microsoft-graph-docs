<!-- markdownlint-disable MD041 -->

```PowerShell
# DELETE https://graph.microsoft.com/v1.0/users/{user-id}/messages/{message-id}

$userId = "71766077-aacc-470a-be5e-ba47db3b2e88"
$messageId = "AQMkAGUy.."

Remove-MgUserMessage -UserId $userId -MessageId $messageId
```
