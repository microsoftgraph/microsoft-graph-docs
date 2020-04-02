---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getOffice365ActiveUserCounts = await graphClient.Reports
	.GetOffice365ActiveUserCounts("D7")
	.Request()
	.GetAsync();

```