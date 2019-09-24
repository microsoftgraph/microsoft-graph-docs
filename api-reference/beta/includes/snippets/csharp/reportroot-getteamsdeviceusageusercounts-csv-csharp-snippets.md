---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getTeamsDeviceUsageUserCounts = await graphClient.Reports
	.GetTeamsDeviceUsageUserCounts("D7")
	.Request()
	.GetAsync();

```