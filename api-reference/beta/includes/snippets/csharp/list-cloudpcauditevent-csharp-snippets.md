---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var auditEvents = await graphClient.DeviceManagement.VirtualEndpoint.AuditEvents
	.Request()
	.GetAsync();

```