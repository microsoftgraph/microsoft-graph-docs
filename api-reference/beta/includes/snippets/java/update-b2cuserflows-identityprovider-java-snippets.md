---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IdentityProvider identityProviders = new IdentityProvider();
identityProviders.additionalDataManager().put("@odata.id", new JsonPrimitive("https://graph.microsoft.com/beta/identityProviders/{id}"));

graphClient.identity().b2cUserFlows("{id}").identityProviders().references()
	.buildRequest()
	.patch(identityProviders);

```