---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IIdentityUserFlowAttributeCollectionPage userFlowAttributes = graphClient.identity().userFlowAttributes()
	.buildRequest()
	.get();

```