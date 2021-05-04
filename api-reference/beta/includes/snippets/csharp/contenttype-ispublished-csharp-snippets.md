---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var boolean = await graphClient.Sites["{site-id}"].ContentTypes["{contentType-id}"]
	.IsPublished()
	.Request()
	.GetAsync();

```