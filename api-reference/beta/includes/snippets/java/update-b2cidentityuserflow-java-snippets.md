---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

B2cIdentityUserFlow b2cIdentityUserFlow = new B2cIdentityUserFlow();
b2cIdentityUserFlow.isLanguageCustomizationEnabled = true;
b2cIdentityUserFlow.defaultLanguageTag = "en";

graphClient.identity().b2cUserFlows("B2C_1_CustomerSignUp")
	.buildRequest()
	.patch(b2cIdentityUserFlow);

```