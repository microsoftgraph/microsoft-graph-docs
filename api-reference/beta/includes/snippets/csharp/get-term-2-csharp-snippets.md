---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var children = await graphClient.TermStore.Sets["{termStore.set-id}"].Children
	.Request()
	.GetAsync();

```