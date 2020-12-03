---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var itemAddress = new ItemAddress
{
	DisplayName = "Home",
	Detail = new PhysicalAddress
	{
		Type = PhysicalAddressType.Home,
		PostOfficeBox = null,
		Street = "221B Baker Street",
		City = "London",
		State = null,
		CountryOrRegion = "United Kingdom",
		PostalCode = "E14 3TD"
	}
};

await graphClient.Me.Profile.Addresses
	.Request()
	.AddAsync(itemAddress);

```