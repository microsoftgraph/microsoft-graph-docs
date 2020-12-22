---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var toRecipients = new List<Recipient>()
{
	new Recipient
	{
		EmailAddress = new EmailAddress
		{
			Address = "danas@contoso.onmicrosoft.com",
			Name = "Dana Swope"
		}
	}
};

var comment = "Dana, hope you can make this meeting.";

await graphClient.Me.Events["{id}"]
	.Forward(toRecipients,comment)
	.Request()
	.PostAsync();

```