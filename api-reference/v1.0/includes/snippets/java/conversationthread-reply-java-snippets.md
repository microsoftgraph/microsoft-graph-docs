---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Post post = new Post();
ItemBody body = new ItemBody();
body.contentType = BodyType.TEXT;
body.content = "content-value";
post.body = body;

graphClient.groups("{id}").threads("{id}")
	.reply(ConversationThreadReplyParameterSet
		.newBuilder()
		.withPost(post)
		.build())
	.buildRequest()
	.post();

```