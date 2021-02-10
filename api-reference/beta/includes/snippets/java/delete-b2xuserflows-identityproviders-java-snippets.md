---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.identity().b2cUserFlows("B2C_1_CustomerSignUp").identityProviders("Facebook-OAUTH").reference()
	.buildRequest()
	.delete();

```