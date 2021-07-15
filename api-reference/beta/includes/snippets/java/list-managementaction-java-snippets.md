---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ManagementActionCollectionPage managementActions = graphClient.tenantRelationships().managedTenants().managementActions()
	.buildRequest()
	.get();

```