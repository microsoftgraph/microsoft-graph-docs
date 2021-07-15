---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CloudPcConnection cloudPcConnection = graphClient.tenantRelationships().managedTenants().cloudPcConnections("86789ee0-e31d-4bee-98e6-6f310bd327bb")
	.buildRequest()
	.get();

```