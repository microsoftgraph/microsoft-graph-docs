---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var reminderView = await graphClient.Me
	.ReminderView("2017-06-05T10:00:00.0000000","2017-06-11T11:00:00.0000000")
	.Request()
	.GetAsync();

```