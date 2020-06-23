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
		Latitude = 1.1f,
		Longitude = 2.2f,
		AltitudeInMeters = 3
	}
};

await graphClient.Print.Printers["{id}"]
	.Request()
	.UpdateAsync(printer);

```