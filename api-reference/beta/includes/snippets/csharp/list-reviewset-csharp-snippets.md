---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var reviewSets = await graphClient.Compliance.Ediscovery.Cases["6f65a8e4-c6a0-4cff-8a81-c9ab5df7290d"].ReviewSets
	.Request()
	.GetAsync();

```