---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

FeatureRolloutPolicy featureRolloutPolicy = new FeatureRolloutPolicy();
featureRolloutPolicy.displayName = "PasswordHashSync Rollout Policy";
featureRolloutPolicy.description = "PasswordHashSync Rollout Policy";
featureRolloutPolicy.isEnabled = true;
featureRolloutPolicy.isAppliedToOrganization = false;

graphClient.policies().featureRolloutPolicies("d7ab4886-d7f0-441b-a5e6-e62d7328d18a")
	.buildRequest()
	.patch(featureRolloutPolicy);

```