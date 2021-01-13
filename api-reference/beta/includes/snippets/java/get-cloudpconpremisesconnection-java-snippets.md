---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CloudPcOnPremisesConnection cloudPcOnPremisesConnection = graphClient.deviceManagement().virtualEndpoint().onPremisesConnections("{id}")
	.buildRequest()
	.get();

```