---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ITokenLifetimePolicyCollectionPage tokenLifetimePolicies = graphClient.policies().tokenLifetimePolicies()
	.buildRequest()
	.get();

```