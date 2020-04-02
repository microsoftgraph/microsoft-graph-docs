---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getMailboxUsageMailboxCounts = await graphClient.Reports
	.GetMailboxUsageMailboxCounts("D7")
	.Request()
	.GetAsync();

```