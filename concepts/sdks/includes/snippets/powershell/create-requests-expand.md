<!-- markdownlint-disable MD041 -->

```PowerShell
# GET https://graph.microsoft.com/v1.0/users/{user-id}/messages?$expand=attachments

$userId = "71766077-aacc-470a-be5e-ba47db3b2e88"
$messageId = "AQMkAGUy.."

# -ExpandProperty is equivalent to $expand
$message = Get-MgUserMessage -UserId $userId -MessageId $messageId -ExpandProperty Attachments
```
