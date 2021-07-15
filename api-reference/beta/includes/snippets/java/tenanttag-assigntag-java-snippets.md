---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<String> tenantIdsList = new LinkedList<String>();
tenantIdsList.add("String");

graphClient.tenantRelationships().managedTenants().tenantTags("{tenantTagId}")
	.assignTag(TenantTagAssignTagParameterSet
		.newBuilder()
		.withTenantIds(tenantIdsList)
		.build())
	.buildRequest()
	.post();

```