---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IdentityProvider identityProvider = new IdentityProvider();
identityProvider.name = "Login with Amazon";
identityProvider.type = "Amazon";
identityProvider.clientId = "56433757-cadd-4135-8431-2c9e3fd68ae8";
identityProvider.clientSecret = "000000000000";

graphClient.identityProviders()
	.buildRequest()
	.post(identityProvider);

```