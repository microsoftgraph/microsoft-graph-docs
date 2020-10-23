---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var contact = new Contact
{
	GivenName = "Pavel",
	Surname = "Bansky",
	EmailAddresses = new List<EmailAddress>()
	{
		new EmailAddress
		{
			Address = "pavelb@fabrikam.onmicrosoft.com",
			Name = "Pavel Bansky"
		}
	},
	BusinessPhones = new List<String>()
	{
		"+1 732 555 0102"
	}
};

await graphClient.Me.Contacts
	.Request()
	.AddAsync(contact);

```