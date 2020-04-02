---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getEmailAppUsageAppsUserCounts = await graphClient.Reports
	.GetEmailAppUsageAppsUserCounts("D7")
	.Request()
	.GetAsync();

```