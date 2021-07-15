---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TenantCollectionPage tenants = graphClient.tenantRelationships().managedTenants().tenants()
	.buildRequest()
	.get();

```