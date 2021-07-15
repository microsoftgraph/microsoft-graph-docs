---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String tenantId = "String";

String tenantGroupId = "String";

String managementTemplateId = "String";

graphClient.tenantRelationships().managedTenants().managementActions("{managementActionId}")
	.apply(ManagementActionApplyParameterSet
		.newBuilder()
		.withTenantId(tenantId)
		.withTenantGroupId(tenantGroupId)
		.withManagementTemplateId(managementTemplateId)
		.build())
	.buildRequest()
	.post();

```