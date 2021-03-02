---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IDirectoryAuditCollectionPage directoryAudits = graphClient.auditLogs().directoryAudits()
	.buildRequest()
	.get();

```