---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var report = await graphClient.Reports
	.GetMailboxUsageQuotaStatusMailboxCounts("D7")
	.Request()
	.GetAsync();

```