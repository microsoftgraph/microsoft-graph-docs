---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TenantDetailedInformation tenantDetailedInformation = graphClient.tenantRelationships().managedTenants().tenantsDetailedInformation("{tenantDetailedInformationId}")
	.buildRequest()
	.get();

```