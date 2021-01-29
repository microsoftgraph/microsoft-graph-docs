---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var custodian = new Custodian
{
	Email = "AdeleV@contoso.com",
	ApplyHoldToSources = true
};

await graphClient.Compliance.Ediscovery.Cases["2192ca408ea2410eba3bec8ae873be6b"].Custodians
	.Request()
	.AddAsync(custodian);

```