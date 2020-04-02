---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var groupIds = new List<String>()
{
	"groupIds-value"
};

await graphClient.Groups["{id}"]
	.CheckMemberGroups(groupIds)
	.Request()
	.PostAsync();

```