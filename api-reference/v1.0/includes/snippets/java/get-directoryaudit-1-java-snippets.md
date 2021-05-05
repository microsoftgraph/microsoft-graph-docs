---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DirectoryAudit directoryAudit = graphClient.auditLogs().directoryAudits("{id}")
	.buildRequest()
	.get();

```