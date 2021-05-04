---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

MessageCollectionPage messages = graphClient.me().messages()
	.buildRequest()
	.filter("MentionsPreview/IsMentioned eq true")
	.select("subject,sender,receivedDateTime,mentionsPreview")
	.get();

```