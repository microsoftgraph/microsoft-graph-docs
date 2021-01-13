---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var destinationPrinterId = "9a3b3956-ce5b-4d06-a605-5b0bd3e9ddea";

await graphClient.Print.Printers["d5ef6ec4-07ca-4212-baf9-d45be126bfbb"].Jobs["44353"]
	.Redirect(destinationPrinterId,null)
	.Request()
	.PostAsync();

```