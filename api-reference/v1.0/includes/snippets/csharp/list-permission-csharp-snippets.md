---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var permissions = await graphClient.Sites["{site-id}"].Permissions
	.Request()
	.GetAsync();

```