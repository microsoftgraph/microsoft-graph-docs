---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

FileAttachment attachment = new FileAttachment();
attachment.name = "smile";
attachment.contentBytes = Base64.getDecoder().decode("R0lGODdhEAYEAA7");

graphClient.me().messages("AAMkpsDRVK").attachments()
	.buildRequest()
	.post(attachment);

```