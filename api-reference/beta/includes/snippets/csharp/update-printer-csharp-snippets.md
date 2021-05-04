---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var printer = new Printer
{
	Name = "PrinterName",
	Location = new PrinterLocation
	{
		Latitude = 1.1,
		Longitude = 2.2,
		AltitudeInMeters = 3
	}
};

await graphClient.Print.Printers["{printer-id}"]
	.Request()
	.UpdateAsync(printer);

```