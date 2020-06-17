---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var calendarPermission = new CalendarPermission
{
	Role = CalendarRoleType.Write
};

await graphClient.Users["{id}"].Calendar.CalendarPermissions["RGVmYXVsdA=="]
	.Request()
	.UpdateAsync(calendarPermission);

```