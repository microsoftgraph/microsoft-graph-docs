---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var timeOffRequests = await graphClient.Teams["{teamId}"].Schedule.TimeOffRequests
	.Request()
	.GetAsync();

```