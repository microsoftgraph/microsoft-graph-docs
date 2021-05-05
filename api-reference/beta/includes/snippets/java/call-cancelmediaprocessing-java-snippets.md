---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String clientContext = "clientContext-value";

graphClient.communications().calls("{id}")
	.cancelMediaProcessing(CallCancelMediaProcessingParameterSet
		.newBuilder()
		.withClientContext(clientContext)
		.build())
	.buildRequest()
	.post();

```