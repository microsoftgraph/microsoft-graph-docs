---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var versions = await graphClient.Sites["{site-id}"].Lists["{list-id}"].Items["{listItem-id}"].Versions
	.Request()
	.GetAsync();

```