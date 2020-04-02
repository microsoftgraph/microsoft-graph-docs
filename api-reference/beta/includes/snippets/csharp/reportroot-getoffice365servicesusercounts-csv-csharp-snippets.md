---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getOffice365ServicesUserCounts = await graphClient.Reports
	.GetOffice365ServicesUserCounts("D7")
	.Request()
	.GetAsync();

```