---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

HomeRealmDiscoveryPolicy homeRealmDiscoveryPolicy = graphClient.policies().homeRealmDiscoveryPolicies("{id}")
	.buildRequest()
	.get();

```