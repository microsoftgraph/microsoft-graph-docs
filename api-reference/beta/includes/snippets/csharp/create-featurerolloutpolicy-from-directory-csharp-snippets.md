---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var featureRolloutPolicy = new FeatureRolloutPolicy
{
	DisplayName = "PassthroughAuthentication rollout policy",
	Description = "PassthroughAuthentication rollout policy",
	Feature = StagedFeatureName.PassthroughAuthentication,
	IsEnabled = true,
	IsAppliedToOrganization = false
};

await graphClient.Directory.FeatureRolloutPolicies
	.Request()
	.AddAsync(featureRolloutPolicy);

```