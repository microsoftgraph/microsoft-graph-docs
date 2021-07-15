---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ManagedDeviceComplianceCollectionPage managedDeviceCompliances = graphClient.tenantRelationships().managedTenants().managedDeviceCompliances()
	.buildRequest()
	.get();

```