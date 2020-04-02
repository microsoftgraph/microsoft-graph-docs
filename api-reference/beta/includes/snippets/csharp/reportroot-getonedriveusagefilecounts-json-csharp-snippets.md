---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getOneDriveUsageFileCounts = await graphClient.Reports
	.GetOneDriveUsageFileCounts("D7")
	.Request()
	.GetAsync();

```