---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getSkypeForBusinessOrganizerActivityUserCounts = await graphClient.Reports
	.GetSkypeForBusinessOrganizerActivityUserCounts("D7")
	.Request()
	.GetAsync();

```