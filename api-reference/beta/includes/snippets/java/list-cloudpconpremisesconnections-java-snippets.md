---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CloudPcOnPremisesConnectionCollectionPage onPremisesConnections = graphClient.deviceManagement().virtualEndpoint().onPremisesConnections()
	.buildRequest()
	.get();

```