---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var message = new Message
{
	Attachments = new List<Attachment>()
	{
		new FileAttachment
		{
			Name = "guidelines.txt",
			ContentBytes = "bWFjIGFuZCBjaGVlc2UgdG9kYXk="
		}
	}
};

var comment = "if the project gets approved, please take a look at the attached guidelines before you decide on the name.";

await graphClient.Me.Messages["AAMkADA1MTAAAH5JaKAAA="]
	.CreateReplyAll(message,comment)
	.Request()
	.PostAsync();

```