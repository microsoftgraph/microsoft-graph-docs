---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getOneDriveActivityUserCounts = await graphClient.Reports
	.GetOneDriveActivityUserCounts("D7")
	.Request()
	.GetAsync();

```