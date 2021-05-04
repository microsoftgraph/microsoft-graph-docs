---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ProvisioningObjectSummaryCollectionPage provisioning = graphClient.auditLogs().provisioning()
	.buildRequest()
	.get();

```