---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var message = new Message
{
	Subject = "Did you see last night's game?",
	Importance = Importance.Low,
	Body = new ItemBody
	{
		ContentType = BodyType.Html,
		Content = "They were <b>awesome</b>!"
	},
	ToRecipients = new List<Recipient>()
	{
		new Recipient
		{
			EmailAddress = new EmailAddress
			{
				Address = "AdeleV@contoso.onmicrosoft.com"
			}
		}
	}
};

await graphClient.Me.Messages
	.Request()
	.AddAsync(message);

```