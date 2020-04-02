---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getYammerGroupsActivityGroupCounts = await graphClient.Reports
	.GetYammerGroupsActivityGroupCounts("D7")
	.Request()
	.GetAsync();

```