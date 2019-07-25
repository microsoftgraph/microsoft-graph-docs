---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var post = await graphClient.Groups["{id}"].Threads["{id}"].Posts["{id}"]
	.Request()
	.GetAsync();

```