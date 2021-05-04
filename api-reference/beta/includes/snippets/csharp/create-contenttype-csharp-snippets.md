---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var contentType = new ContentType
{
	Name = "docSet",
	Description = "custom docset",
	Base = new ContentType
	{
		Name = "Document Set",
		Id = "0x0120D520"
	},
	Group = "Document Set Content Types"
};

await graphClient.Sites["{site-id}"].ContentTypes
	.Request()
	.AddAsync(contentType);

```