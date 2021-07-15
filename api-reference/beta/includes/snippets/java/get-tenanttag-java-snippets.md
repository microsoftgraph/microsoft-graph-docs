---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TenantTag tenantTag = graphClient.tenantRelationships().managedTenants().tenantTags("{tenantTagId}")
	.buildRequest()
	.get();

```