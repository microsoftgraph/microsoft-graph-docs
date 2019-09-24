---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getMailboxUsageDetail = await graphClient.Reports
	.GetMailboxUsageDetail("D7")
	.Request()
	.GetAsync();

```