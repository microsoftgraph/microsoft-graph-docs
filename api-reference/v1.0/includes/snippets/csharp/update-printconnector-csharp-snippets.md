---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var printConnector = new PrintConnector
{
	DisplayName = "ConnectorName",
	FullyQualifiedDomainName = "CONNECTOR-MACHINE",
	OperatingSystem = "Microsoft Windows 10 Enterprise Insider Preview | 10.0.19555",
	AppVersion = "0.19.7338.23496",
	Location = new PrinterLocation
	{
		Latitude = 1.1,
		Longitude = 2.2,
		AltitudeInMeters = 3
	}
};

await graphClient.Print.Connectors["{printConnector-id}"]
	.Request()
	.UpdateAsync(printConnector);

```