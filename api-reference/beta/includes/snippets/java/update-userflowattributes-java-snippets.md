---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IdentityUserFlowAttribute identityUserFlowAttribute = new IdentityUserFlowAttribute();
identityUserFlowAttribute.description = "Your new hobby";

graphClient.identity().userFlowAttributes("extension_d09380e2b4c642b9a203fb816a04a7ad_Hobby")
	.buildRequest()
	.patch(identityUserFlowAttribute);

```