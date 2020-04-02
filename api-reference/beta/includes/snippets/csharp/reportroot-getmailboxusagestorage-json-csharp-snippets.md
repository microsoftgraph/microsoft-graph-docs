---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getMailboxUsageStorage = await graphClient.Reports
	.GetMailboxUsageStorage("D7")
	.Request()
	.GetAsync();

```