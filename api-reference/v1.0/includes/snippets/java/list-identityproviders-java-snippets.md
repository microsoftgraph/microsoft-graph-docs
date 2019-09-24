---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IIdentityProviderCollectionPage identityProviders = graphClient.identityProviders()
	.buildRequest()
	.get();

```