<!-- markdownlint-disable MD041 -->

```PowerShell
# POST https://graph.microsoft.com/v1.0/users/{user-id}/calendars

$userId = "71766077-aacc-470a-be5e-ba47db3b2e88"

New-MgUserCalendar -UserId $userId -Name "Volunteer"
```
