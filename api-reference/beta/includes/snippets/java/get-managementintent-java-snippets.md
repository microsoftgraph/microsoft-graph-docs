---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ManagementIntent managementIntent = graphClient.tenantRelationships().managedTenants().managementIntents("{managementIntentId}")
	.buildRequest()
	.get();

```