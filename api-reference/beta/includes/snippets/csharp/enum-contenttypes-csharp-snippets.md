---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var contentTypes = await graphClient.Sites["{site-id}"].ContentTypes
	.Request()
	.GetAsync();

```