---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var group = new Group
{
	AssignedLabels = new List<AssignedLabel>()
	{
		new AssignedLabel
		{
			LabelId = "45cd0c48-c540-4358-ad79-a3658cdc5b88"
		}
	}
};

await graphClient.Groups["{group-id}"]
	.Request()
	.UpdateAsync(group);

```