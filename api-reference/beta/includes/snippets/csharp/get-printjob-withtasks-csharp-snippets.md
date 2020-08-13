---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var printJob = await graphClient.Print.Printers["c05f3726-0d4b-4aa1-8fe9-2eb981bb26fb"].Jobs["5182"]
	.Request()
	.Expand("tasks")
	.GetAsync();

```