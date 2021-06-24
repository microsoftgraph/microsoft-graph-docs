---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var columns = await graphClient.Sites["{site-id}"].ContentTypes["{contentType-id}"].Columns
	.Request()
	.GetAsync();

```