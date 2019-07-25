---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var calendarGroup = await graphClient.Me.CalendarGroups["{id}"]
	.Request()
	.GetAsync();

```