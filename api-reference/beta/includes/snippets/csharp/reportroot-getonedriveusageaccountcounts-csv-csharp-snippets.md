---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getOneDriveUsageAccountCounts = await graphClient.Reports
	.GetOneDriveUsageAccountCounts("D7")
	.Request()
	.GetAsync();

```