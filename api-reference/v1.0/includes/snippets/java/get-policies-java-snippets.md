---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IConditionalAccessPolicyCollectionPage policies = graphClient.identity().conditionalAccess().policies()
	.buildRequest()
	.get();

```