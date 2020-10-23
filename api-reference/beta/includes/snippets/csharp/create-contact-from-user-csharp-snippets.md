---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var contact = new Contact
{
	GivenName = "Pavel",
	Surname = "Bansky",
	EmailAddresses = new List<TypedEmailAddress>()
	{
		new TypedEmailAddress
		{
			Address = "pavelb@contoso.onmicrosoft.com",
			Name = "Pavel Bansky",
			Type = EmailType.Personal
		},
		new TypedEmailAddress
		{
			Address = "pavelb@fabrikam.onmicrosoft.com",
			Name = "Pavel Bansky",
			Type = EmailType.Other,
			OtherLabel = "Volunteer work"
		}
	},
	Phones = new List<Phone>()
	{
		new Phone
		{
			Number = "+1 732 555 0102",
			Type = PhoneType.Business
		}
	}
};

await graphClient.Me.Contacts
	.Request()
	.AddAsync(contact);

```