---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var permissions = await graphClient.Sites["{sitesId}"].Permissions
	.Request()
	.GetAsync();

```