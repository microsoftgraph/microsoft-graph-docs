---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getYammerDeviceUsageUserCounts = await graphClient.Reports
	.GetYammerDeviceUsageUserCounts("D7")
	.Request()
	.GetAsync();

```