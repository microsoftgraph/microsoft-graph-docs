---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var stream = await graphClient.Reports
	.GetM365AppUserCounts("D7").Content
	.Request()
	.GetAsync();

```