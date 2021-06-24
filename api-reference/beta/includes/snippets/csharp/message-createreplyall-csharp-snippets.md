---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var message = new Message
{
	Attachments = new MessageAttachmentsCollectionPage()
	{
		new FileAttachment
		{
			Name = "guidelines.txt",
			ContentBytes = Encoding.ASCII.GetBytes("bWFjIGFuZCBjaGVlc2UgdG9kYXk=")
		}
	}
};

var comment = "if the project gets approved, please take a look at the attached guidelines before you decide on the name.";

await graphClient.Me.Messages["{message-id}"]
	.CreateReplyAll(message,comment)
	.Request()
	.PostAsync();

```