---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var swapShiftsChangeRequest = await graphClient.Teams["{teamId}"].Schedule.SwapShiftsChangeRequests["{swapShiftsChangeRequestId}"]
	.Request()
	.GetAsync();

```