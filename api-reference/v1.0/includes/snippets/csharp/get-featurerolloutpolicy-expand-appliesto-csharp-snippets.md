---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var featureRolloutPolicy = await graphClient.Directory.FeatureRolloutPolicies["{featureRolloutPolicy-id}"]
	.Request()
	.Expand("appliesTo")
	.GetAsync();

```