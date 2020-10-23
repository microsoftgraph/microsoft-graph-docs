---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var tokenLifetimePolicy = new TokenLifetimePolicy
{
	Definition = new List<String>()
	{
		"definition-value"
	},
	DisplayName = "displayName-value",
	IsOrganizationDefault = true,
	Type = "type-value"
};

await graphClient.Policies.TokenLifetimePolicies["{id}"]
	.Request()
	.UpdateAsync(tokenLifetimePolicy);

```