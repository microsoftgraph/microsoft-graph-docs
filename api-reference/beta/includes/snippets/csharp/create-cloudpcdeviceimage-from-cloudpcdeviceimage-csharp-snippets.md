---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var cloudPcDeviceImage = new CloudPcDeviceImage
{
	DisplayName = "Display Name value",
	OsBuildNumber = "OS Build Number value",
	OperatingSystem = "Operating System value",
	Version = "Version value",
	SourceImageResourceId = "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff/resourceGroups/Example/providers/Microsoft.Compute/images/exampleImage"
};

await graphClient.DeviceManagement.VirtualEndpoint.DeviceImages
	.Request()
	.AddAsync(cloudPcDeviceImage);

```