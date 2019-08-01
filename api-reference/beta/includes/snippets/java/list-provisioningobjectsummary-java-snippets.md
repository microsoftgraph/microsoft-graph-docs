---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IProvisioningObjectSummaryCollectionPage directoryProvisioning = graphClient.auditLogs().directoryProvisioning()
	.buildRequest()
	.get();

```