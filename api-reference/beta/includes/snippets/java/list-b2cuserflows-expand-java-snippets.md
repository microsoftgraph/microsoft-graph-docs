---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

B2cIdentityUserFlowCollectionPage b2cUserFlows = graphClient.identity().b2cUserFlows()
	.buildRequest()
	.expand("identityProviders")
	.get();

```