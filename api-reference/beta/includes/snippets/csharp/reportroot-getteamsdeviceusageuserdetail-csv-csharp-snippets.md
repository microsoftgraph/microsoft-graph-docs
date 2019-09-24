---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getTeamsDeviceUsageUserDetail = await graphClient.Reports
	.GetTeamsDeviceUsageUserDetail("D7")
	.Request()
	.GetAsync();

```