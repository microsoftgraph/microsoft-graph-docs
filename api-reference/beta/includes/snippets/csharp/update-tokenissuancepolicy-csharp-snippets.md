---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var tokenIssuancePolicy = new TokenIssuancePolicy
{
	Definition = new List<String>()
	{
		"definition-value"
	},
	DisplayName = "displayName-value",
	IsOrganizationDefault = true,
	Type = "type-value"
};

await graphClient.Policies.TokenIssuancePolicies["{id}"]
	.Request()
	.UpdateAsync(tokenIssuancePolicy);

```