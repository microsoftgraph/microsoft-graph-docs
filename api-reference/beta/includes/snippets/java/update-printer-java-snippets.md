---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Printer printer = new Printer();
printer.name = "PrinterName";
PrinterLocation location = new PrinterLocation();
location.latitude = 1.1;
location.longitude = 2.2;
location.altitudeInMeters = 3;
printer.location = location;

graphClient.print().printers("{id}")
	.buildRequest()
	.patch(printer);

```