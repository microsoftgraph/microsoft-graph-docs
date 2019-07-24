---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Attachment attachment = new Attachment();
attachment.lastModifiedDateTime = "datetime-value";
attachment.name = "name-value";
attachment.contentType = "contentType-value";
attachment.size = 99;
attachment.isInline = true;

graphClient.users("{id}").outlook().tasks("{id}").attachments()
	.buildRequest()
	.post(attachment);

```