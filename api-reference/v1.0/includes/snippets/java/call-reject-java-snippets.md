---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

RejectReason reason = RejectReason.BUSY;

graphClient.communications().calls("57dab8b1-894c-409a-b240-bd8beae78896")
	.reject(CallRejectParameterSet
		.newBuilder()
		.withReason(reason)
		.withCallbackUri(null)
		.build())
	.buildRequest()
	.post();

```