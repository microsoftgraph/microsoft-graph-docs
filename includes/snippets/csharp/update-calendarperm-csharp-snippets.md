---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var calendarPermission = new CalendarPermission
{
	Role = CalendarRoleType.Write
};

await graphClient.Users["AlexW@contoso.OnMicrosoft.com"].Calendars["AAMkADAwAABf02bAAAA="].CalendarPermissions["L289RXhjaGFuZ2VMYWJQWRlbGVW"]
	.Request()
	.UpdateAsync(calendarPermission);

```