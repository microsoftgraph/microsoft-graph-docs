---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IActivityBasedTimeoutPolicyCollectionPage activityBasedTimeoutPolicies = graphClient.policies().activityBasedTimeoutPolicies()
	.buildRequest()
	.get();

```