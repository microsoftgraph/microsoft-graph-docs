---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IdentityUserFlowAttribute identityUserFlowAttribute = graphClient.identity().userFlowAttributes("{id}")
	.buildRequest()
	.get();

```