---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IGroupLifecyclePolicyCollectionPage groupLifecyclePolicies = graphClient.groupLifecyclePolicies()
	.buildRequest()
	.get();

```