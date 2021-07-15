---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Tenant tenant = graphClient.tenantRelationships().managedTenants().tenants("{tenantId}")
	.buildRequest()
	.get();

```