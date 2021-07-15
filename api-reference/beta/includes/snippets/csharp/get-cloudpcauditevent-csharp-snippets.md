---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var cloudPcAuditEvent = await graphClient.DeviceManagement.VirtualEndpoint.AuditEvents["{cloudPcAuditEvent-id}"]
	.Request()
	.GetAsync();

```