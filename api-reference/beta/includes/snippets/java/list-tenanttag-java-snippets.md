---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TenantTagCollectionPage tenantTags = graphClient.tenantRelationships().managedTenants().tenantTags()
	.buildRequest()
	.get();

```