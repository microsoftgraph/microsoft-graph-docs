---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var printJob = await graphClient.Print.Printers["{printer-id}"].Jobs["{printJob-id}"]
	.Request()
	.Expand("tasks")
	.GetAsync();

```