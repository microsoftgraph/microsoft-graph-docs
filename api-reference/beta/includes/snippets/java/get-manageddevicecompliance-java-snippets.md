---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ManagedDeviceCompliance managedDeviceCompliance = graphClient.tenantRelationships().managedTenants().managedDeviceCompliances("{managedDeviceComplianceId}")
	.buildRequest()
	.get();

```