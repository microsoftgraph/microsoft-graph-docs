---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var message = new Message
{
	Attachments = (IMessageAttachmentsCollectionPage)new List<Attachment>()
	{
		new FileAttachment
		{
			Name = "guidelines.txt",
			ContentBytes = Encoding.ASCII.GetBytes("bWFjIGFuZCBjaGVlc2UgdG9kYXk=")
		}
	}
};

var comment = "Please take a look at the attached guidelines before you decide on the name.";

await graphClient.Me.Messages["AAMkADA1MTAAAH5JaKAAA="]
	.ReplyAll(message,comment)
	.Request()
	.PostAsync();

```