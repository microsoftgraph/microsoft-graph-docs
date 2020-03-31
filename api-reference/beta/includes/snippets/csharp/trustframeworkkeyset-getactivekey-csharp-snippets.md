---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.TrustFramework.KeySets["{id}"]
	.GetActiveKey()
	.Request()
	.PostAsync();

```