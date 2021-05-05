---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var groupIds = new List<String>()
{
	"groupIds-value"
};

await graphClient.Contacts["{orgContact-id}"]
	.CheckMemberGroups(groupIds)
	.Request()
	.PostAsync();

```