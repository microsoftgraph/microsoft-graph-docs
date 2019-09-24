---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Directory.FeatureRolloutPolicies["df85e4d9-e8c4-4033-a41c-73419a95c29c"].AppliesTo["2441b489-4f12-4882-b039-8f6006bd66da"].Reference
	.Request()
	.DeleteAsync();

```