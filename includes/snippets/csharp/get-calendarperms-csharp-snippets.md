---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var calendarPermissions = await graphClient.Users["AlexW@contoso.OnMicrosoft.com"].Calendar.CalendarPermissions
	.Request()
	.GetAsync();

```