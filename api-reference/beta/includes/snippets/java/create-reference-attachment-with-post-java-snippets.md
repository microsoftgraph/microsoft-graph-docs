---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Post post = new Post();
ItemBody body = new ItemBody();
body.contentType = BodyType.TEXT;
body.content = "I attached a reference to a file on OneDrive.";
post.body = body;
LinkedList<Attachment> attachmentsList = new LinkedList<Attachment>();
ReferenceAttachment attachments = new ReferenceAttachment();
attachments.name = "Personal pictures";
attachments.sourceUrl = "https://contoso.com/personal/mario_contoso_net/Documents/Pics";
attachments.providerType = ReferenceAttachmentProvider.ONE_DRIVE_CONSUMER;
attachments.permission = ReferenceAttachmentPermission.EDIT;
attachments.isFolder = false;
attachmentsList.add(attachments);
AttachmentCollectionResponse attachmentCollectionResponse = new AttachmentCollectionResponse();
attachmentCollectionResponse.value = attachmentsList;
AttachmentCollectionPage attachmentCollectionPage = new AttachmentCollectionPage(attachmentCollectionResponse, null);
post.attachments = attachmentCollectionPage;

graphClient.groups("1848753d-185d-4c08-a4e4-6ee40521d115").threads("AAQkADJUdfolA==")
	.reply(post)
	.buildRequest()
	.post();

```