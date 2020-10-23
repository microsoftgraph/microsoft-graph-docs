---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var message = "message-value";

await graphClient.Teams["{teamId}"].Schedule.SwapShiftsChangeRequests["{swapShiftChangeRequestId}"]
	.Approve(message)
	.Request()
	.PostAsync();

```