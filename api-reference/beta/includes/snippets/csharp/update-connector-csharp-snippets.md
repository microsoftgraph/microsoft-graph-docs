---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var printConnector = new PrintConnector
{
	Name = "ConnectorName",
	FullyQualifiedDomainName = "CONNECTOR-MACHINE",
	OperatingSystem = "Microsoft Windows 10 Enterprise Insider Preview | 10.0.19555",
	AppVersion = "0.19.7338.23496",
	Location = new PrinterLocation
	{
		Latitude = 1.1f,
		Longitude = 2.2f,
		AltitudeInMeters = 3
	}
};

await graphClient.Print.Connectors["{id}"]
	.Request()
	.UpdateAsync(printConnector);

```