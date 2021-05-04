---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String clientContext = "clientContext-value";

graphClient.communications().calls("57dab8b1-894c-409a-b240-bd8beae78896")
	.unmute(CallUnmuteParameterSet
		.newBuilder()
		.withClientContext(clientContext)
		.build())
	.buildRequest()
	.post();

```