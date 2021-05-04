---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var relations = await graphClient.TermStore.Sets["{termStore.set-id}"].Relations
	.Request()
	.GetAsync();

```