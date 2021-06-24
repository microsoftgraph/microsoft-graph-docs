---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IdentityProviderBase identityProviderBase = new IdentityProviderBase();
identityProviderBase.responseType = EnumSet.of(OpenIdConnectResponseTypes.ID_TOKEN);

graphClient.identity().identityProviders("OIDC-V1-Nam_AD_Test-3e393390-ed2d-4794-97f6-5c999ccc61f7")
	.buildRequest()
	.patch(identityProviderBase);

```