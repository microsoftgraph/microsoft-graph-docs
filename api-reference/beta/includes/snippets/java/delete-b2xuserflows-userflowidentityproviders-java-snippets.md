---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.identity().b2cUserFlows("B2C_test_signin_signup").userFlowIdentityProviders("MSA-OIDC").reference()
	.buildRequest()
	.delete();

```