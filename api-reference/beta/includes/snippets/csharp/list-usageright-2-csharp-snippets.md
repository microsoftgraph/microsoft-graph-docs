---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var usageRights = await graphClient.Devices["{device-id}"].UsageRights
	.Request()
	.Filter("state in ('active', 'suspended') and serviceIdentifier in ('ABCD')")
	.GetAsync();

```