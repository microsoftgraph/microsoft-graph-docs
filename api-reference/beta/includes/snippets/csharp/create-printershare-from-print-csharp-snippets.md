---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var printerShare = new PrinterShare
{
	Name = "name-value",
	AdditionalData = new Dictionary<string, object>()
	{
		{"printer@odata.bind","https://graph.microsoft.com/beta/print/printers/{id}"}
	}
};

await graphClient.Print.PrinterShares
	.Request()
	.AddAsync(printerShare);

```