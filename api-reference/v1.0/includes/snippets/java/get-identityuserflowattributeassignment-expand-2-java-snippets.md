---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IdentityUserFlowAttributeAssignmentCollectionPage userAttributeAssignments = graphClient.identity().b2xUserFlows("B2X_1_Partner").userAttributeAssignments()
	.buildRequest()
	.expand("userAttribute")
	.get();

```