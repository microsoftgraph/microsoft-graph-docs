---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var printerCapabilities = await graphClient.Print.Printers["{printer-id}"]
	.GetCapabilities()
	.Request()
	.GetAsync();

```