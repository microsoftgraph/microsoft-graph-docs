---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ICloudPcDeviceImageGetSourceImagesCollectionPage getSourceImages = graphClient.deviceManagement().virtualEndpoint().deviceImages()
	.getSourceImages()
	.buildRequest()
	.get();

```