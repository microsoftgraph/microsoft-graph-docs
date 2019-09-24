---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getEmailActivityUserCounts = await graphClient.Reports
	.GetEmailActivityUserCounts("D7")
	.Request()
	.GetAsync();

```