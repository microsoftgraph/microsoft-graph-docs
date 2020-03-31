---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var message = new Message
{
	IsDeliveryReceiptRequested = true,
	ToRecipients = new List<Recipient>()
	{
		new Recipient
		{
			EmailAddress = new EmailAddress
			{
				Address = "danas@contoso.onmicrosoft.com",
				Name = "Dana Swope"
			}
		}
	}
};

var comment = "Dana, just want to make sure you get this; you'll need this if the project gets approved.";

await graphClient.Me.Messages["AAMkADA1MTAAAH5JaLAAA="]
	.CreateForward(null,message,comment)
	.Request()
	.PostAsync();

```