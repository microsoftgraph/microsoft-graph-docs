---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var timeOffRequests = new TimeOffRequest
{
	StartDateTime = DateTimeOffset.Parse("datetime-value"),
	EndDateTime = DateTimeOffset.Parse("datetime-value"),
	TimeOffReasonId = "timeOffReasonId-value"
};

await graphClient.Teams["{id}"].Schedule.TimeOffRequests
	.Request()
	.UpdateAsync(timeOffRequests);

```