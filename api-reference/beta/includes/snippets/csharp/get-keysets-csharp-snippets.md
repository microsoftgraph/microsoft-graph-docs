---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var keySets = await graphClient.TrustFramework.KeySets
	.Request()
	.GetAsync();

```