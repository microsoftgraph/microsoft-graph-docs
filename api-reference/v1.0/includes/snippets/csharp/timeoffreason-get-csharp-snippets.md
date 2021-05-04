---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var timeOffReason = await graphClient.Teams["{team-id}"].Schedule.TimeOffReasons["{timeOffReason-id}"]
	.Request()
	.GetAsync();

```