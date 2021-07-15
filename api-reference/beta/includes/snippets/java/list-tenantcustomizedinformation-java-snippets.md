---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TenantCustomizedInformationCollectionPage tenantsCustomizedInformation = graphClient.tenantRelationships().managedTenants().tenantsCustomizedInformation()
	.buildRequest()
	.get();

```