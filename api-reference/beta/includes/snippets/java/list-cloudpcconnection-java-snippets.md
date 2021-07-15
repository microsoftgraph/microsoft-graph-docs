---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CloudPcConnectionCollectionPage cloudPcConnections = graphClient.tenantRelationships().managedTenants().cloudPcConnections()
	.buildRequest()
	.get();

```