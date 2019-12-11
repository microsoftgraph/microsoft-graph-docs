---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var swapShiftsChangeRequests = new SwapShiftsChangeRequest
{
	RecipientShiftId = "recipientShiftId-value"
};

await graphClient.Teams["{id}"].Schedule.SwapShiftsChangeRequests
	.Request()
	.UpdateAsync(swapShiftsChangeRequests);

```