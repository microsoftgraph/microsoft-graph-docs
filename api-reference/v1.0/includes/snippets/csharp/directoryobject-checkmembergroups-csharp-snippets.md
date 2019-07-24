---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var groupIds = new List<String>()
{
	"fee2c45b-915a-4a64b130f4eb9e75525e",
	"4fe90ae065a-478b9400e0a0e1cbd540"
};

await graphClient.DirectoryObjects["{id}"]
	.CheckMemberGroups(groupIds)
	.Request()
	.PostAsync();

```