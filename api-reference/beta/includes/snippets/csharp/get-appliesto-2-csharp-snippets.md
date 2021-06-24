---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var appliesTo = await graphClient.Policies.HomeRealmDiscoveryPolicies["{homeRealmDiscoveryPolicy-id}"].AppliesTo
	.Request()
	.GetAsync();

```