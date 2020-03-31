---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var homeRealmDiscoveryPolicies = await graphClient.ServicePrincipals["{id}"].HomeRealmDiscoveryPolicies
	.Request()
	.GetAsync();

```