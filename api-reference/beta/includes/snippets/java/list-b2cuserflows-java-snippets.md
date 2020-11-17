---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IB2cIdentityUserFlowCollectionPage b2cUserFlows = graphClient.identity().b2cUserFlows()
	.buildRequest()
	.get();

```