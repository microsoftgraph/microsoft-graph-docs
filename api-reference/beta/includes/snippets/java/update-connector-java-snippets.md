---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrintConnector printConnector = new PrintConnector();
printConnector.displayName = "ConnectorName";
printConnector.fullyQualifiedDomainName = "CONNECTOR-MACHINE";
printConnector.operatingSystem = "Microsoft Windows 10 Enterprise Insider Preview | 10.0.19555";
printConnector.appVersion = "0.19.7338.23496";
PrinterLocation location = new PrinterLocation();
location.latitude = 1.1d;
location.longitude = 2.2d;
location.altitudeInMeters = 3;
printConnector.location = location;

graphClient.print().connectors("{id}")
	.buildRequest()
	.patch(printConnector);

```