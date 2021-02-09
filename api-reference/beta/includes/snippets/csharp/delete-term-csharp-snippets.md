---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.TermStore.Sets["{setId}"].Terms["{termId}"]
	.Request()
	.DeleteAsync();

```