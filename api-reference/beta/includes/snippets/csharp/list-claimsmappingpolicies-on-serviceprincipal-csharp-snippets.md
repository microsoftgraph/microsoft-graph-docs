---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var claimsMappingPolicies = await graphClient.ServicePrincipals["{servicePrincipal-id}"].ClaimsMappingPolicies
	.Request()
	.GetAsync();

```