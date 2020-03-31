---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var message = new Message
{
	Subject = "Annual review",
	Body = new ItemBody
	{
		ContentType = BodyType.Html,
		Content = "You should be proud!"
	},
	ToRecipients = new List<Recipient>()
	{
		new Recipient
		{
			EmailAddress = new EmailAddress
			{
				Address = "rufus@contoso.com"
			}
		}
	},
	Extensions = new List<Extension>()
	{
		new OpenTypeExtension
		{
			ExtensionName = "Com.Contoso.Referral",
			CompanyName = "Wingtip Toys",
			ExpirationDate = "2015-12-30T11:00:00Z",
			DealValue = 10000
		}
	}
};

await graphClient.Me.Messages
	.Request()
	.AddAsync(message);

```