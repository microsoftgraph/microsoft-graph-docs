---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var groupIds = new List<String>()
{
	"groupId-value1",
	"groupId-value2"
};

await graphClient.Contacts["{id}"]
	.CheckMemberGroups(groupIds)
	.Request()
	.PostAsync();

```