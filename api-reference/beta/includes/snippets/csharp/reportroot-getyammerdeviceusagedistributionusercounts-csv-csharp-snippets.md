---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getYammerDeviceUsageDistributionUserCounts = await graphClient.Reports
	.GetYammerDeviceUsageDistributionUserCounts("D7")
	.Request()
	.GetAsync();

```