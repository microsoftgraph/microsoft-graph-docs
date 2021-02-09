---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AttachmentItem attachmentItem = new AttachmentItem();
attachmentItem.attachmentType = AttachmentType.FILE;
attachmentItem.name = "flower";
attachmentItem.size = 3483322;

graphClient.me().events("AAMkADU5CCmSAAA=").attachments()
	.createUploadSession(attachmentItem)
	.buildRequest()
	.post();

```