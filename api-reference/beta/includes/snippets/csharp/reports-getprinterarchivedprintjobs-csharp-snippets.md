---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getPrinterArchivedPrintJobs = await graphClient.Print.Reports
	.GetPrinterArchivedPrintJobs("016b5565-3bbf-4067-b9ff-4d68167eb1a6","2021-05-24","2021-05-25")
	.Request()
	.GetAsync();

```