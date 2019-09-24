---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getOffice365GroupsActivityGroupCounts = await graphClient.Reports
	.GetOffice365GroupsActivityGroupCounts("D7")
	.Request()
	.GetAsync();

```