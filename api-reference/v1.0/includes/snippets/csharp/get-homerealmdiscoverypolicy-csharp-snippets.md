---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var homeRealmDiscoveryPolicy = await graphClient.Policies.HomeRealmDiscoveryPolicies["{homeRealmDiscoveryPolicy-id}"]
	.Request()
	.GetAsync();

```