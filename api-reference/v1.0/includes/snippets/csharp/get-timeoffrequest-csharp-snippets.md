---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var timeOffRequest = await graphClient.Teams["{teamId}"].Schedule.TimeOffRequests["{timeOffRequestId}"]
	.Request()
	.GetAsync();

```