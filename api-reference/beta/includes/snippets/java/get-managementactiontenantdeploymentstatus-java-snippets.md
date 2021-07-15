---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ManagementActionTenantDeploymentStatus managementActionTenantDeploymentStatus = graphClient.tenantRelationships().managedTenants().managementActionTenantDeploymentStatuses("{managementActionTenantDeploymentStatusId}")
	.buildRequest()
	.get();

```