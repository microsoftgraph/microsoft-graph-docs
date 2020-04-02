---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getSkypeForBusinessOrganizerActivityCounts = await graphClient.Reports
	.GetSkypeForBusinessOrganizerActivityCounts("D7")
	.Request()
	.GetAsync();

```