---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var featureRolloutPolicy = await graphClient.Directory.FeatureRolloutPolicies["df85e4d9-e8c4-4033-a41c-73419a95c29c"]
	.Request()
	.Expand("appliesTo")
	.GetAsync();

```