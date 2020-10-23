---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var trustFrameworkKeySet = new TrustFrameworkKeySet
{
	Id = "keyset1",
	Keys = new List<TrustFrameworkKey>()
	{
		new TrustFrameworkKey
		{
			K = "k-value",
			X5c = new List<String>()
			{
				"x5c-value"
			},
			X5t = "x5t-value",
			Kty = "kty-value",
			Use = "use-value",
			Exp = 99,
			Nbf = 99,
			Kid = "kid-value",
			E = "e-value",
			N = "n-value",
			D = "d-value",
			P = "p-value",
			Q = "q-value",
			Dp = "dp-value",
			Dq = "dq-value",
			Qi = "qi-value"
		}
	}
};

await graphClient.TrustFramework.KeySets
	.Request()
	.AddAsync(trustFrameworkKeySet);

```