---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IMessageCollectionPage messages = graphClient.me().messages()
	.buildRequest()
	.filter("MentionsPreview/IsMentioned eq true,")
	.select("subject,sender,receivedDateTime,mentionsPreview")
	.get();

```