---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var trustFrameworkKeySet = await graphClient.TrustFramework.KeySets["{trustFrameworkKeySet-id}"]
	.Request()
	.GetAsync();

```