---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var list = new List
{
	DisplayName = "Books",
	Columns = new List<ColumnDefinition>()
	{
		new ColumnDefinition
		{
			Name = "Author",
			Text = new TextColumn
			{
			}
		},
		new ColumnDefinition
		{
			Name = "PageCount",
			Number = new NumberColumn
			{
			}
		}
	},
	List = new ListInfo
	{
		Template = "genericList"
	}
};

await graphClient.Sites["{site-id}"].Lists
	.Request()
	.AddAsync(list);

```