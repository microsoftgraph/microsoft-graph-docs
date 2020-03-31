---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var claimsMappingPolicy = new ClaimsMappingPolicy
{
	Definition = new List<String>()
	{
		"definition-value"
	},
	DisplayName = "displayName-value",
	IsOrganizationDefault = true
};

await graphClient.Policies.ClaimsMappingPolicies
	.Request()
	.AddAsync(claimsMappingPolicy);

```