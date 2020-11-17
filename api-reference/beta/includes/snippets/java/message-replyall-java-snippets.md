---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Message message = new Message();
LinkedList<Attachment> attachmentsList = new LinkedList<Attachment>();
FileAttachment attachments = new FileAttachment();
attachments.name = "guidelines.txt";
attachments.contentBytes = Base64.getDecoder().decode("bWFjIGFuZCBjaGVlc2UgdG9kYXk=");
attachmentsList.add(attachments);
AttachmentCollectionResponse attachmentCollectionResponse = new AttachmentCollectionResponse();
attachmentCollectionResponse.value = attachmentsList;
AttachmentCollectionPage attachmentCollectionPage = new AttachmentCollectionPage(attachmentCollectionResponse, null);
message.attachments = attachmentCollectionPage;

String comment = "Please take a look at the attached guidelines before you decide on the name.";

graphClient.me().messages("AAMkADA1MTAAAH5JaKAAA=")
	.replyAll(message,comment)
	.buildRequest()
	.post();

```