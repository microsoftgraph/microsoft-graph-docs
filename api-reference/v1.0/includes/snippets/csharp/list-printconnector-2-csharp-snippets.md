---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var connectors = await graphClient.Print.Printers["{printer-id}"].Connectors
	.Request()
	.GetAsync();

```