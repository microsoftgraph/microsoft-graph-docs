---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var printerShare = new PrinterShare
{
	DisplayName = "PrinterShare Name",
	AllowAllUsers = false,
	AdditionalData = new Dictionary<string, object>()
	{
		{"printer@odata.bind", "https://graph.microsoft.com/v1.0/print/printers/{printerId}"}
	}
};

await graphClient.Print.Shares["{printerShare-id}"]
	.Request()
	.UpdateAsync(printerShare);

```