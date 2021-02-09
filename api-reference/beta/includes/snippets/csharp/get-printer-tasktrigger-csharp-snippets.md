---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var printTaskTrigger = await graphClient.Print.Printers["{printerId}"].TaskTriggers["{taskTriggerId}"]
	.Request()
	.GetAsync();

```