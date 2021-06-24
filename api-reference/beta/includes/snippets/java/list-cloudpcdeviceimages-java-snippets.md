---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CloudPcDeviceImageCollectionPage deviceImages = graphClient.deviceManagement().virtualEndpoint().deviceImages()
	.buildRequest()
	.get();

```