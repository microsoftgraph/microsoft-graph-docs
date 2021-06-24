---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var featureRolloutPolicies = await graphClient.Policies.FeatureRolloutPolicies
	.Request()
	.GetAsync();

```