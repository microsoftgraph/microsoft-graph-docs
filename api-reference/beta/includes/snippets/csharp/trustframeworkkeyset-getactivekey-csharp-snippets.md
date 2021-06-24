---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var trustFrameworkKey = await graphClient.TrustFramework.KeySets["{trustFrameworkKeySet-id}"]
	.GetActiveKey()
	.Request()
	.GetAsync();

```