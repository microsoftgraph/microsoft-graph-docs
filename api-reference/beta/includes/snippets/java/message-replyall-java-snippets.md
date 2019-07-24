---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Message message = new Message();
LinkedList<Attachment> attachmentsList = new LinkedList<Attachment>();
Attachment attachments = new Attachment();
attachments.additionalDataManager().put("@odata.type", new JsonPrimitive("#microsoft.graph.fileAttachment"));
attachments.name = "guidelines.txt";
attachments.contentBytes = "bWFjIGFuZCBjaGVlc2UgdG9kYXk=";
attachmentsList.add(attachments);
message.attachments = attachmentsList;

String comment = "Please take a look at the attached guidelines before you decide on the name.";

graphClient.me().messages("AAMkADA1MTAAAH5JaKAAA=")
	.replyAll(message,comment)
	.buildRequest()
	.post();

```