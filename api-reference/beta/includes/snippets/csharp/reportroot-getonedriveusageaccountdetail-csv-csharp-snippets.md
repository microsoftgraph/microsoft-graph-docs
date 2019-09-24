---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getOneDriveUsageAccountDetail = await graphClient.Reports
	.GetOneDriveUsageAccountDetail("D7")
	.Request()
	.GetAsync();

```