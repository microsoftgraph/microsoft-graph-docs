---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IB2xIdentityUserFlowCollectionPage b2xUserFlows = graphClient.identity().b2xUserFlows()
	.buildRequest()
	.expand("identityProviders")
	.get();

```