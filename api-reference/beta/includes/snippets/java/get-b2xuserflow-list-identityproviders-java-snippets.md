---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IIdentityProviderCollectionWithReferencesPage identityProviders = graphClient.identity().b2xUserFlows("{id}").identityProviders()
	.buildRequest()
	.get();

```