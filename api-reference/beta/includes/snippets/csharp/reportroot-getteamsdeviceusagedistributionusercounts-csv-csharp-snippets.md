---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getTeamsDeviceUsageDistributionUserCounts = await graphClient.Reports
	.GetTeamsDeviceUsageDistributionUserCounts("D7")
	.Request()
	.GetAsync();

```