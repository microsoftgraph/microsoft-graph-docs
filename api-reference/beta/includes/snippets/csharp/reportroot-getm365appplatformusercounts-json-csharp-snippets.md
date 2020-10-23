---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var stream = await graphClient.Reports
	.GetM365AppPlatformUserCounts("D7").Content
	.Request()
	.GetAsync();

```