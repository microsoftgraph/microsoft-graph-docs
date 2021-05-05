---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String comment = "comment-value";

Boolean sendResponse = true;

graphClient.me().events("{id}")
	.accept(EventAcceptParameterSet
		.newBuilder()
		.withComment(comment)
		.withSendResponse(sendResponse)
		.build())
	.buildRequest()
	.post();

```