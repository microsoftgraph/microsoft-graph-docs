---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IdentityProviderBase identityProviderBase = new IdentityProviderBase();
identityProviderBase.displayName = "Apple";

graphClient.identity().identityProviders("Apple-Managed-OIDC")
	.buildRequest()
	.patch(identityProviderBase);

```