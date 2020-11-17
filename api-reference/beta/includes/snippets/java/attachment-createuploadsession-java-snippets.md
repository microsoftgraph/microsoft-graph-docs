---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AttachmentItem attachmentItem = new AttachmentItem();
attachmentItem.attachmentType = AttachmentType.FILE;
attachmentItem.name = "flower";
attachmentItem.size = 3483322L;

graphClient.me().messages("AAMkADI5MAAIT3drCAAA=").attachments()
	.createUploadSession(attachmentItem)
	.buildRequest()
	.post();

```