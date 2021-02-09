---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ICloudPcOnPremisesConnectionCollectionPage onPremisesConnections = graphClient.deviceManagement().virtualEndpoint().onPremisesConnections()
	.buildRequest()
	.get();

```