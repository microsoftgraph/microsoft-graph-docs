---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var contentType = await graphClient.Sites["{site-id}"].ContentTypes["{contentType-id}"]
	.Request()
	.GetAsync();

```