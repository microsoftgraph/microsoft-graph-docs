---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var openShifts = new OpenShift
{
	SharedOpenShift = new OpenShiftItem
	{
		OpenSlotCount = 99
	},
	DraftOpenShift = new OpenShiftItem
	{
		OpenSlotCount = 99
	},
	SchedulingGroupId = "TAG_f914d037-00a3-4ba4-b712-ef178cbea263"
};

await graphClient.Teams["{id}"].Schedule.OpenShifts
	.Request()
	.UpdateAsync(openShifts);

```