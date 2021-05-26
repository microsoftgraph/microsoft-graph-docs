---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

HomeRealmDiscoveryPolicyCollectionPage homeRealmDiscoveryPolicies = graphClient.policies().homeRealmDiscoveryPolicies()
	.buildRequest()
	.get();

```