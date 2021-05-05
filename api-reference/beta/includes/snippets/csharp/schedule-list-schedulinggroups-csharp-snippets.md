---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var schedulingGroups = await graphClient.Teams["{team-id}"].Schedule.SchedulingGroups
	.Request()
	.GetAsync();

```