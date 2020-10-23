---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var use = "sig";

var kty = "RSA";

var nbf = 1508969811;

var exp = 1508969811;

await graphClient.TrustFramework.KeySets["{id}"]
	.GenerateKey(use,kty,nbf,exp)
	.Request()
	.PostAsync();

```