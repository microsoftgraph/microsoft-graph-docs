---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var trustFrameworkKeySet = new TrustFrameworkKeySet
{
	Id = "keyset1"
};

await graphClient.TrustFramework.KeySets
	.Request()
	.AddAsync(trustFrameworkKeySet);

```