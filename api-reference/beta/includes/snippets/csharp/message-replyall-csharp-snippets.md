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

var comment = "Please take a look at the attached guidelines before you decide on the name.";

await graphClient.Me.Messages["{message-id}"]
	.ReplyAll(message,comment)
	.Request()
	.PostAsync();

```