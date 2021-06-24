---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var activityBasedTimeoutPolicy = new ActivityBasedTimeoutPolicy
{
	Definition = new List<String>()
	{
		"definition-value"
	},
	DisplayName = "displayName-value",
	IsOrganizationDefault = true
};

await graphClient.Policies.ActivityBasedTimeoutPolicies["{activityBasedTimeoutPolicy-id}"]
	.Request()
	.UpdateAsync(activityBasedTimeoutPolicy);

```