---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var featureRolloutPolicy = new FeatureRolloutPolicy
{
	DisplayName = "PasswordHashSync Rollout Policy",
	Description = "PasswordHashSync Rollout Policy",
	IsEnabled = true,
	IsAppliedToOrganization = false
};

await graphClient.Policies.FeatureRolloutPolicies["{featureRolloutPolicy-id}"]
	.Request()
	.UpdateAsync(featureRolloutPolicy);

```