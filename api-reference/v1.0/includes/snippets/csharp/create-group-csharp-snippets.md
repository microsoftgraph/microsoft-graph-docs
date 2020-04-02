---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var group = new Group
{
	Description = "Self help community for library",
	DisplayName = "Library Assist",
	GroupTypes = new List<String>()
	{
		"Unified"
	},
	MailEnabled = true,
	MailNickname = "library",
	SecurityEnabled = false
};

await graphClient.Groups
	.Request()
	.AddAsync(group);

```