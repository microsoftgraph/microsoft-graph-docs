---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var message = new Message
{
	Subject = "Meet for lunch?",
	Body = new ItemBody
	{
		ContentType = BodyType.Text,
		Content = "The new cafeteria is open."
	},
	ToRecipients = new List<Recipient>()
	{
		new Recipient
		{
			EmailAddress = new EmailAddress
			{
				Address = "samanthab@contoso.onmicrosoft.com"
			}
		}
	},
	CcRecipients = new List<Recipient>()
	{
		new Recipient
		{
			EmailAddress = new EmailAddress
			{
				Address = "danas@contoso.onmicrosoft.com"
			}
		}
	}
};

var saveToSentItems = false;

await graphClient.Me
	.SendMail(message,saveToSentItems)
	.Request()
	.PostAsync();

```