---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CloudPcOverview cloudPcOverview = graphClient.tenantRelationships().managedTenants().cloudPcsOverview("{cloudPcOverviewId}")
	.buildRequest()
	.get();

```