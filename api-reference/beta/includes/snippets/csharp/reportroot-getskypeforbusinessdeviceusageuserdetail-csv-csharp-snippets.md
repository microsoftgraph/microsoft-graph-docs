---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getSkypeForBusinessDeviceUsageUserDetail = await graphClient.Reports
	.GetSkypeForBusinessDeviceUsageUserDetail("D7")
	.Request()
	.GetAsync();

```