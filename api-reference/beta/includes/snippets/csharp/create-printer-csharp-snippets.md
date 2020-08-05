---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var displayName = "Test Printer";

var manufacturer = "Test Printer Manufacturer";

var model = "Test Printer Model";

var physicalDeviceId = null;

var hasPhysicalDevice = false;

var certificateSigningRequest = new PrintCertificateSigningRequestObject
{
	Content = "{content}",
	TransportKey = "{sampleTransportKey}"
};

var connectorId = null;

await graphClient.Print.Printers
	.Create(displayName,manufacturer,model,certificateSigningRequest,physicalDeviceId,hasPhysicalDevice,connectorId)
	.Request()
	.PostAsync();

```