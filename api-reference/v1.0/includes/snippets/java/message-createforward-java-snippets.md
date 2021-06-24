---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.me().messages("{id}")
	.createForward(MessageCreateForwardParameterSet
		.newBuilder()
		.withToRecipients(null)
		.withMessage(null)
		.withComment(null)
		.build())
	.buildRequest()
	.post();

```