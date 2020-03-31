---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var printJob = await graphClient.Print.Printers["{id}"].Jobs["{id}"]
	.Request()
	.GetAsync();

```