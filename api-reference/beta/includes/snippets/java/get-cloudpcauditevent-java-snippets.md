---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CloudPcAuditEvent cloudPcAuditEvent = graphClient.deviceManagement().virtualEndpoint().auditEvents("{id}")
	.buildRequest()
	.get();

```