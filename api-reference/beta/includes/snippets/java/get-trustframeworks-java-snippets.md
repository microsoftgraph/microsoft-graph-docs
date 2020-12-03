---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ITrustFrameworkPolicyCollectionPage policies = graphClient.trustFramework().policies()
	.buildRequest()
	.get();

```