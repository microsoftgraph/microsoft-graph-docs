---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IdentityProviderBase userFlowIdentityProviders = new IdentityProviderBase();
userFlowIdentityProviders.additionalDataManager().put("@odata.id", new JsonPrimitive("https://graph.microsoft.com/beta/identity/identityProviders/{id}"));

graphClient.identity().b2cUserFlows("B2C_test_signin_signup").userFlowIdentityProviders().references()
	.buildRequest()
	.patch(userFlowIdentityProviders);

```