---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String tenantId = "String";

graphClient.tenantRelationships().managedTenants().tenantGroups()
	.tenantSearch(TenantGroupTenantSearchParameterSet
		.newBuilder()
		.withTenantId(tenantId)
		.build())
	.buildRequest()
	.post();

```