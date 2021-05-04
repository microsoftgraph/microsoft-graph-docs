---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

B2xIdentityUserFlowCollectionPage b2xUserFlows = graphClient.identity().b2xUserFlows()
	.buildRequest()
	.expand("identityProviders")
	.get();

```