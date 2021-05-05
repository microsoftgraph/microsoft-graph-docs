---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String displayName = "Test Printer";

String manufacturer = "Test Printer Manufacturer";

String model = "Test Printer Model";



Boolean hasPhysicalDevice = false;

PrintCertificateSigningRequest certificateSigningRequest = new PrintCertificateSigningRequest();
certificateSigningRequest.content = "{content}";
certificateSigningRequest.transportKey = "{sampleTransportKey}";



graphClient.print().printers()
	.create(PrinterCreateParameterSet
		.newBuilder()
		.withDisplayName(displayName)
		.withManufacturer(manufacturer)
		.withModel(model)
		.withPhysicalDeviceId(physicalDeviceId)
		.withHasPhysicalDevice(hasPhysicalDevice)
		.withCertificateSigningRequest(certificateSigningRequest)
		.withConnectorId(connectorId)
		.build())
	.buildRequest()
	.post();

```