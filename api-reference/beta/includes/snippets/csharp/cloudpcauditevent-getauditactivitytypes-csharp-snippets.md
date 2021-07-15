---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getAuditActivityTypes = await graphClient.DeviceManagement.VirtualEndpoint.AuditEvents
	.GetAuditActivityTypes()
	.Request()
	.GetAsync();

```