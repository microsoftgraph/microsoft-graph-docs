---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var shifts = await graphClient.Teams["{teamId}"].Schedule.Shifts
	.Request()
	.Filter("sharedShift/startDateTime ge 2019-03-11T00:00:00.000Z and sharedShift/endDateTime le 2019-03-18T00:00:00.000Z and draftShift/startDateTime ge 2019-03-11T00:00:00.000Z and draftShift/endDateTime le 2019-03-18T00:00:00.000Z")
	.GetAsync();

```