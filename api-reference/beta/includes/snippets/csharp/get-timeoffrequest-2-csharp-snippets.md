---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var timeOffRequests = await graphClient.Teams["{team-id}"].Schedule.TimeOffRequests
	.Request()
	.GetAsync();

```