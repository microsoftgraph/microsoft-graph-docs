---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var contact = new Contact
{
	HomeAddress = new PhysicalAddress
	{
		Street = "123 Some street",
		City = "Seattle",
		State = "WA",
		PostalCode = "98121"
	},
	Birthday = DateTimeOffset.Parse("1974-07-22")
};

await graphClient.Me.Contacts["{id}"]
	.Request()
	.UpdateAsync(contact);

```