---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ManagementAction managementAction = graphClient.tenantRelationships().managedTenants().managementActions("{managementActionId}")
	.buildRequest()
	.get();

```