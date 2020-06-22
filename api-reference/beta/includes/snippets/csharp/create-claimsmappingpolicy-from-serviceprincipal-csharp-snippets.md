---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var claimsMappingPolicy = new ClaimsMappingPolicy
{
	AdditionalData = new Dictionary<string, object>()
	{
		{"@odata.id", "https://graph.microsoft.com/beta/policies/claimsMappingPolicies/cd3d9b57-0aee-4f25-8ee3-ac74ef5986a9"}
	}
};

await graphClient.ServicePrincipals["{id}"].ClaimsMappingPolicies
	.Request()
	.AddAsync(claimsMappingPolicy);

```