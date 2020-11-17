---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IFeatureRolloutPolicyCollectionPage featureRolloutPolicies = graphClient.directory().featureRolloutPolicies()
	.buildRequest()
	.get();

```