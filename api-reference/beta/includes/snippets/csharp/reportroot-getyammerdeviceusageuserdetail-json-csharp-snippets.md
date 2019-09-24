---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getYammerDeviceUsageUserDetail = await graphClient.Reports
	.GetYammerDeviceUsageUserDetail("D7")
	.Request()
	.GetAsync();

```