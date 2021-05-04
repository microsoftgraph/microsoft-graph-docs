---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var swapShiftsChangeRequest = await graphClient.Teams["{team-id}"].Schedule.SwapShiftsChangeRequests["{swapShiftsChangeRequest-id}"]
	.Request()
	.GetAsync();

```