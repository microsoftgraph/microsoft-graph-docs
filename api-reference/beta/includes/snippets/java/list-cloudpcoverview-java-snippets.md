---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CloudPcOverviewCollectionPage cloudPcsOverview = graphClient.tenantRelationships().managedTenants().cloudPcsOverview()
	.buildRequest()
	.get();

```