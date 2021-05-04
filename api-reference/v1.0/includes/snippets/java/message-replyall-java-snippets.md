---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String comment = "comment-value";

graphClient.me().messages("{id}")
	.replyAll(MessageReplyAllParameterSet
		.newBuilder()
		.withMessage(null)
		.withComment(comment)
		.build())
	.buildRequest()
	.post();

```