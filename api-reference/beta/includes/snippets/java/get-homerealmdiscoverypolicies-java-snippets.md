---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IHomeRealmDiscoveryPolicyCollectionPage homeRealmDiscoveryPolicies = graphClient.policies().homeRealmDiscoveryPolicies()
	.buildRequest()
	.get();

```