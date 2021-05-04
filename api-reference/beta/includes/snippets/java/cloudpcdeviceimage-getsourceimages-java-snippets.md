---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CloudPcDeviceImageGetSourceImagesCollectionPage getSourceImages = graphClient.deviceManagement().virtualEndpoint().deviceImages()
	.getSourceImages()
	.buildRequest()
	.get();

```