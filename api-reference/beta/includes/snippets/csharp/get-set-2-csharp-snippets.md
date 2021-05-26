---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var set = await graphClient.TermStore.Sets["{termStore.set-id}"]
	.Request()
	.GetAsync();

```