---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var reason = "String";

await graphClient.Print.Printers["{printer-id}"].Jobs["{printJob-id}"]
	.Abort(reason)
	.Request()
	.PostAsync();

```