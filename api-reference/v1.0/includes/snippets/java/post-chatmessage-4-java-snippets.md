---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ChatMessage chatMessage = new ChatMessage();
ItemBody body = new ItemBody();
body.contentType = BodyType.HTML;
body.content = "Here's the latest budget. <attachment id=\"153fa47d-18c9-4179-be08-9879815a9f90\"></attachment>";
chatMessage.body = body;
LinkedList<ChatMessageAttachment> attachmentsList = new LinkedList<ChatMessageAttachment>();
ChatMessageAttachment attachments = new ChatMessageAttachment();
attachments.id = "153fa47d-18c9-4179-be08-9879815a9f90";
attachments.contentType = "reference";
attachments.contentUrl = "https://m365x987948.sharepoint.com/sites/test/Shared%20Documents/General/test%20doc.docx";
attachments.name = "Budget.docx";
attachmentsList.add(attachments);
chatMessage.attachments = attachmentsList;

graphClient.teams("fbe2bf47-16c8-47cf-b4a5-4b9b187c508b").channels("19:4a95f7d8db4c4e7fae857bcebe0623e6@thread.tacv2").messages()
	.buildRequest()
	.post(chatMessage);

```