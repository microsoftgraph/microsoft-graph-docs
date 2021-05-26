---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var calendarPermission = await graphClient.Users["{user-id}"].Calendar.CalendarPermissions["{calendarPermission-id}"]
	.Request()
	.GetAsync();

```