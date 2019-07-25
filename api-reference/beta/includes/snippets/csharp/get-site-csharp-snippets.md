---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var site = await graphClient.Sites["{site-id}"]
	.Request()
	.GetAsync();

```