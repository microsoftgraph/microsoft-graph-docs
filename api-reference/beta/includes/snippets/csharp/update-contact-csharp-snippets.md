---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var contact = new Contact
{
	EmailAddresses = new List<TypedEmailAddress>()
	{
		new TypedEmailAddress
		{
			Type = EmailType.Personal,
			Name = "Pavel Bansky",
			Address = "pavelb@adatum.onmicrosoft.com"
		},
		new TypedEmailAddress
		{
			Address = "pavelb@fabrikam.onmicrosoft.com",
			Name = "Pavel Bansky",
			Type = EmailType.Other,
			OtherLabel = "Volunteer work"
		}
	}
};

await graphClient.Me.Contacts["AAMkADh6v5AAAvgTCEAAA="]
	.Request()
	.UpdateAsync(contact);

```