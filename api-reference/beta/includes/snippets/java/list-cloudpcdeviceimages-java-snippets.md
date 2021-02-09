---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ICloudPcDeviceImageCollectionPage deviceImages = graphClient.deviceManagement().virtualEndpoint().deviceImages()
	.buildRequest()
	.get();

```