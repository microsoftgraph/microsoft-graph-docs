---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String tenantGroupId = "String";

String tenantId = "String";

String managementActionId = "String";

String managementTemplateId = "String";

String status = "String";

graphClient.tenantRelationships().managedTenants().managementActionTenantDeploymentStatuses()
	.changeDeploymentStatus(ManagementActionTenantDeploymentStatusChangeDeploymentStatusParameterSet
		.newBuilder()
		.withTenantGroupId(tenantGroupId)
		.withTenantId(tenantId)
		.withManagementActionId(managementActionId)
		.withManagementTemplateId(managementTemplateId)
		.withStatus(status)
		.build())
	.buildRequest()
	.post();

```