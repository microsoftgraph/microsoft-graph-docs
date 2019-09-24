---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getOffice365ActiveUserDetail = await graphClient.Reports
	.GetOffice365ActiveUserDetail("D7")
	.Request()
	.GetAsync();

```