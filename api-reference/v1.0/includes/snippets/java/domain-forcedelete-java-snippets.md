---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Boolean disableUserAccounts = true;

graphClient.domains("{id}")
	.forceDelete(DomainForceDeleteParameterSet
		.newBuilder()
		.withDisableUserAccounts(disableUserAccounts)
		.build())
	.buildRequest()
	.post();

```