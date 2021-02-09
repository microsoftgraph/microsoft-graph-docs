---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CloudPcDeviceImage cloudPcDeviceImage = new CloudPcDeviceImage();
cloudPcDeviceImage.displayName = "Display Name value";
cloudPcDeviceImage.osBuildNumber = "OS Build Number value";
cloudPcDeviceImage.operatingSystem = "Operating System value";
cloudPcDeviceImage.version = "Version value";
cloudPcDeviceImage.sourceImageResourceId = "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff/resourceGroups/Example/providers/Microsoft.Compute/images/exampleImage";

graphClient.deviceManagement().virtualEndpoint().deviceImages()
	.buildRequest()
	.post(cloudPcDeviceImage);

```