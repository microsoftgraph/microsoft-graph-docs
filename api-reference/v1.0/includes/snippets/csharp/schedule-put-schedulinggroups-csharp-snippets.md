---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var schedulingGroup = new SchedulingGroup
{
	DisplayName = "Cashiers",
	IsActive = true,
	UserIds = new List<String>()
	{
		"c5d0c76b-80c4-481c-be50-923cd8d680a1",
		"2a4296b3-a28a-44ba-bc66-0274b9b95851"
	}
};

await graphClient.Teams["{teamId}"].Schedule.SchedulingGroups["{schedulingGroupId}"]
	.Request()
	.Header("Prefer","return=representation")
	.PutAsync(schedulingGroup);

```