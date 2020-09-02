---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var set = new Set
{
	Description = "mySet"
};

await graphClient.TermStore.Sets["{setId}"]
	.Request()
	.UpdateAsync(set);

```