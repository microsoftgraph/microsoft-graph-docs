---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SocialIdentityProvider identityProviderBase = new SocialIdentityProvider();
identityProviderBase.displayName = "Login with Amazon";
identityProviderBase.identityProviderType = "Amazon";
identityProviderBase.clientId = "56433757-cadd-4135-8431-2c9e3fd68ae8";
identityProviderBase.clientSecret = "000000000000";

graphClient.identity().identityProviders()
	.buildRequest()
	.post(identityProviderBase);

```