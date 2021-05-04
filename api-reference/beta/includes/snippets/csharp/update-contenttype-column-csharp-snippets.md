---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var columnDefinition = new ColumnDefinition
{
	Required = true,
	Hidden = false,
	PropagateChanges = false
};

await graphClient.Sites["{site-id}"].ContentTypes["{contentType-id}"].Columns["{columnDefinition-id}"]
	.Request()
	.UpdateAsync(columnDefinition);

```