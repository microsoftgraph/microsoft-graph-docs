---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var contentTypes = await graphClient.Sites["{site-id}"].Lists["{list-id}"].ContentTypes
	.Request()
	.GetAsync();

```