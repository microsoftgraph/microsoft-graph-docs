---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var printerShares = await graphClient.Print.PrinterShares
	.Request()
	.GetAsync();

```