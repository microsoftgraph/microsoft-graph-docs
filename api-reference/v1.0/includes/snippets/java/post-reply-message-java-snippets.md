---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ChatMessage chatMessage = new ChatMessage();
ItemBody body = new ItemBody();
body.contentType = BodyType.HTML;
body.content = "Hello World";
chatMessage.body = body;

graphClient.teams("57fb72d0-d811-46f4-8947-305e6072eaa5").channels("19:4b6bed8d24574f6a9e436813cb2617d8@thread.tacv2").messages("1590776551682").replies()
	.buildRequest()
	.post(chatMessage);

```