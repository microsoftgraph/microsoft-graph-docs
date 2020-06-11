---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var listItem = new ListItem
{
	Fields = new FieldValueSet
	{
		AdditionalData = new Dictionary<string, object>()
		{
			{"Title", "Widget"},
			{"Color", "Purple"},
			{"Weight", "32"}
		}
	}
};

await graphClient.Sites["{site-id}"].Lists["{list-id}"].Items
	.Request()
	.AddAsync(listItem);

```