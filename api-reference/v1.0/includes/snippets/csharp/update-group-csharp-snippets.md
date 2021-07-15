---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var group = new Group
{
	Description = "Library Assist",
	DisplayName = "Library Assist",
	GroupTypes = new List<String>()
	{
		"Unified"
	},
	MailEnabled = true,
	MailNickname = "library-help"
};

await graphClient.Groups["{group-id}"]
	.Request()
	.UpdateAsync(group);

```