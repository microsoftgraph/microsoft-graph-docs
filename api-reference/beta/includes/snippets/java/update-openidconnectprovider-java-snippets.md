---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IdentityProvider identityProvider = new IdentityProvider();
identityProvider.responseType = EnumSet.of(OpenIdConnectResponseTypes.ID_TOKEN);

graphClient.identityProviders("OIDC-V1-MyTest-085a8a0c-58cb-4b6d-8e07-1328ea404e1a")
	.buildRequest()
	.patch(identityProvider);

```