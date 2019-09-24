---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var schedulingGroups = await graphClient.Teams["{teamId}"].Schedule.SchedulingGroups
	.Request()
	.GetAsync();

```