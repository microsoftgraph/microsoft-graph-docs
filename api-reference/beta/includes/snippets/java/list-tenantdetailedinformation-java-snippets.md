---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TenantDetailedInformationCollectionPage tenantsDetailedInformation = graphClient.tenantRelationships().managedTenants().tenantsDetailedInformation()
	.buildRequest()
	.get();

```