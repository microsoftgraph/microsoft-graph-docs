---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var swapShiftsChangeRequests = await graphClient.Teams["{team-id}"].Schedule.SwapShiftsChangeRequests
	.Request()
	.GetAsync();

```