---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.TermStore.Groups["{termStore.group-id}"]
	.Request()
	.DeleteAsync();

```