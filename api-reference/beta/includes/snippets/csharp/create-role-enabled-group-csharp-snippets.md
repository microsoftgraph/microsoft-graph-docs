---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var group = new Group
{
	Description = "Group assignable to a role",
	DisplayName = "Role assignable group",
	GroupTypes = new List<String>()
	{
		"Unified"
	},
	IsAssignableToRole = true,
	MailEnabled = true,
	SecurityEnabled = true,
	MailNickname = "contosohelpdeskadministrators",
	Visibility = "Private"
};

await graphClient.Groups
	.Request()
	.AddAsync(group);

```