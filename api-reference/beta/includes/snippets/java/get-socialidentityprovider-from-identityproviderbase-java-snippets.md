---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IdentityProviderBase identityProviderBase = graphClient.identity().identityProviders("Amazon-OAUTH")
	.buildRequest()
	.get();

```