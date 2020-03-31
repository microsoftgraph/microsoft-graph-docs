---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var comment = "comment-value";

var toRecipients = new List<Recipient>()
{
	new Recipient
	{
		EmailAddress = new EmailAddress
		{
			Name = "name-value",
			Address = "address-value"
		}
	}
};

await graphClient.Me.Messages["{id}"]
	.Forward(toRecipients,null,comment)
	.Request()
	.PostAsync();

```