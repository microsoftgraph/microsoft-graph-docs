---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getOneDriveActivityFileCounts = await graphClient.Reports
	.GetOneDriveActivityFileCounts("D7")
	.Request()
	.GetAsync();

```