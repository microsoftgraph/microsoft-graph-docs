---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var newAssignmentOrder = new AssignmentOrder
{
	Order = new List<String>()
	{
		"City",
		"extension_GUID_ShoeSize"
	}
};

await graphClient.Identity.B2cUserFlows["{id}"].UserAttributeAssignments
	.SetOrder(newAssignmentOrder)
	.Request()
	.PostAsync();

```