---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IdentityUserFlowAttribute identityUserFlowAttribute = new IdentityUserFlowAttribute();
identityUserFlowAttribute.displayName = "Hobby";
identityUserFlowAttribute.description = "Your hobby";
identityUserFlowAttribute.dataType = IdentityUserFlowAttributeDataType.STRING;

graphClient.identity().userFlowAttributes()
	.buildRequest()
	.post(identityUserFlowAttribute);

```