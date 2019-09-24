---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getYammerGroupsActivityDetail = await graphClient.Reports
	.GetYammerGroupsActivityDetail("D7")
	.Request()
	.GetAsync();

```