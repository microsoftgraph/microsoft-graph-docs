---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DirectoryAuditCollectionPage directoryAudits = graphClient.auditLogs().directoryAudits()
	.buildRequest()
	.get();

```