---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

FileAttachment attachment = new FileAttachment();
attachment.name = "name-value";
attachment.contentType = "contentType-value";
attachment.isInline = false;
attachment.contentLocation = "contentLocation-value";
attachment.contentBytes = Base64.getDecoder().decode("base64-contentBytes-value");

graphClient.me().messages("{id}").attachments()
	.buildRequest()
	.post(attachment);

```