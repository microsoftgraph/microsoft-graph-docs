---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getEmailAppUsageVersionsUserCounts = await graphClient.Reports
	.GetEmailAppUsageVersionsUserCounts("D7")
	.Request()
	.GetAsync();

```