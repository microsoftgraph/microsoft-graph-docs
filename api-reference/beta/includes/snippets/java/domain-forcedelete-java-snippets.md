---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Boolean disableUserAccounts = true;

graphClient.domains("contoso.com")
	.forceDelete(DomainForceDeleteParameterSet
		.newBuilder()
		.withDisableUserAccounts(disableUserAccounts)
		.build())
	.buildRequest()
	.post();

```