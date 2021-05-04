<!-- markdownlint-disable MD041 -->

```PowerShell
# GET https://graph.microsoft.com/v1.0/users/{user-id}/calendars/{calendar-id}/calendarView

$userId = "71766077-aacc-470a-be5e-ba47db3b2e88"
$calendarId = "AQMkAGUy..."

$events = Get-MgUserCalendarView -UserId $userId -CalendarId $calendarId `
-StartDateTime "2020-08-31T00:00:00Z" -EndDateTime "2020-09-02T00:00:00Z"
```
