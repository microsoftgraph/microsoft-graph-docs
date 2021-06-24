---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String comment = "Cancelling for this week due to all hands";

graphClient.me().events("{id}")
	.cancel(EventCancelParameterSet
		.newBuilder()
		.withComment(comment)
		.build())
	.buildRequest()
	.post();

```