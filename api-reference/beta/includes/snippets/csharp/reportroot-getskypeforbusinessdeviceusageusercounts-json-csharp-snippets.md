---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getSkypeForBusinessDeviceUsageUserCounts = await graphClient.Reports
	.GetSkypeForBusinessDeviceUsageUserCounts("D7")
	.Request()
	.GetAsync();

```