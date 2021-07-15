---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IdentityProviderBase userFlowIdentityProviders = new IdentityProviderBase();
userFlowIdentityProviders.additionalDataManager().put("@odata.id", new JsonPrimitive("https://graph.microsoft.com/beta/identity/identityProviders/B2X_1_Test"));

graphClient.identity().b2xUserFlows("B2X_1_Test").userFlowIdentityProviders().references()
	.buildRequest()
	.patch(userFlowIdentityProviders);

```