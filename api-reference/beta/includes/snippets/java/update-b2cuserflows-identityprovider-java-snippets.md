---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IdentityProvider identityProvider = new IdentityProvider();
identityProvider.additionalDataManager().put("@odata.id", new JsonPrimitive("https://graph.microsoft.com/beta/identityProviders/{id}"));

graphClient.identity().b2cUserFlows("{id}").identityProviders().references()
	.buildRequest()
	.post(identityProvider);

```