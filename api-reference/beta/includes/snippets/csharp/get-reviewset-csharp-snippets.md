---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var reviewSet = await graphClient.Compliance.Ediscovery.Cases["6f65a8e4-c6a0-4cff-8a81-c9ab5df7290d"].ReviewSets["0157910c-57ce-4e48-bd4b-90f3c88ca32e"]
	.Request()
	.GetAsync();

```