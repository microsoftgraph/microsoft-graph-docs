---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var group = new Group
{
	Description = "description-value",
	DisplayName = "displayName-value",
	GroupTypes = new List<String>()
	{
		"groupTypes-value"
	},
	Mail = "mail-value",
	MailEnabled = true,
	MailNickname = "mailNickname-value"
};

await graphClient.Groups["{id}"]
	.Request()
	.UpdateAsync(group);

```