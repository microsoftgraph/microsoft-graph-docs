---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IIdentityUserFlowCollectionPage userFlows = graphClient.identity().userFlows()
	.buildRequest()
	.get();

```