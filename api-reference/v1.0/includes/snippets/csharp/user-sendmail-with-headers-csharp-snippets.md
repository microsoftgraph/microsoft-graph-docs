---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var message = new Message
{
	Subject = "9/9/2018: concert",
	Body = new ItemBody
	{
		ContentType = BodyType.Html,
		Content = "The group represents Nevada."
	},
	ToRecipients = new List<Recipient>()
	{
		new Recipient
		{
			EmailAddress = new EmailAddress
			{
				Address = "AlexW@contoso.OnMicrosoft.com"
			}
		}
	},
	InternetMessageHeaders = new List<InternetMessageHeader>()
	{
		new InternetMessageHeader
		{
			Name = "x-custom-header-group-name",
			Value = "Nevada"
		},
		new InternetMessageHeader
		{
			Name = "x-custom-header-group-id",
			Value = "NV001"
		}
	}
};

await graphClient.Me
	.SendMail(message,null)
	.Request()
	.PostAsync();

```