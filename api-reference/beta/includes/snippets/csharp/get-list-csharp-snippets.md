---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var list = await graphClient.Sites["{site-id}"].Lists["{list-id}"]
	.Request()
	.GetAsync();

```