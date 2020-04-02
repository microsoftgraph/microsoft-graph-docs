---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getOffice365GroupsActivityCounts = await graphClient.Reports
	.GetOffice365GroupsActivityCounts("D7")
	.Request()
	.GetAsync();

```