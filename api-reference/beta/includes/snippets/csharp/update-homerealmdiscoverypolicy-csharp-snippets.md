---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var homeRealmDiscoveryPolicy = new HomeRealmDiscoveryPolicy
{
	Definition = new List<String>()
	{
		"definition-value"
	},
	DisplayName = "displayName-value",
	IsOrganizationDefault = true
};

await graphClient.Policies.HomeRealmDiscoveryPolicies["{id}"]
	.Request()
	.UpdateAsync(homeRealmDiscoveryPolicy);

```