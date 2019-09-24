---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getSharePointActivityFileCounts = await graphClient.Reports
	.GetSharePointActivityFileCounts("D7")
	.Request()
	.GetAsync();

```