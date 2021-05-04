---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var set = new Microsoft.Graph.TermStore.Set
{
	Description = "mySet"
};

await graphClient.TermStore.Sets["{termStore.set-id}"]
	.Request()
	.UpdateAsync(set);

```