---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.TermStore.Sets["{termStore.set-id}"]
	.Request()
	.DeleteAsync();

```