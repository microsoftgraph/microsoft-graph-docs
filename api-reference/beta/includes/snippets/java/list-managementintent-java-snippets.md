---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ManagementIntentCollectionPage managementIntents = graphClient.tenantRelationships().managedTenants().managementIntents()
	.buildRequest()
	.get();

```