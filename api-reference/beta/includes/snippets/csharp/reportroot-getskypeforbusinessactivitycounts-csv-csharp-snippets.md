---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getSkypeForBusinessActivityCounts = await graphClient.Reports
	.GetSkypeForBusinessActivityCounts("D7")
	.Request()
	.GetAsync();

```