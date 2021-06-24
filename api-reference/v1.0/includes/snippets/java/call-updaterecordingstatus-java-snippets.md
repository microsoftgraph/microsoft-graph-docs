---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String clientContext = "clientContext-value";

RecordingStatus status = RecordingStatus.NOT_RECORDING;

graphClient.communications().calls("{id}")
	.updateRecordingStatus(CallUpdateRecordingStatusParameterSet
		.newBuilder()
		.withStatus(status)
		.withClientContext(clientContext)
		.build())
	.buildRequest()
	.post();

```