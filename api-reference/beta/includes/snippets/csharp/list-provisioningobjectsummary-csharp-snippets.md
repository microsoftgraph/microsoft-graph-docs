---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var directoryProvisioning = await graphClient.AuditLogs.DirectoryProvisioning
	.Request()
	.GetAsync();

```