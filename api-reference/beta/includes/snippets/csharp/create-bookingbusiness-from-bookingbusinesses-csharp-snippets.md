---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var bookingBusiness = new BookingBusiness
{
	DisplayName = "Fourth Coffee",
	Address = new PhysicalAddress
	{
		Type = PhysicalAddressType.Unknown,
		PostOfficeBox = "P.O. Box 123",
		Street = "4567 Main Street",
		City = "Buffalo",
		State = "NY",
		CountryOrRegion = "USA",
		PostalCode = "98052"
	},
	Phone = "206-555-0100",
	Email = "manager@fourthcoffee.com",
	WebSiteUrl = "https://www.fourthcoffee.com",
	DefaultCurrencyIso = "USD"
};

await graphClient.BookingBusinesses
	.Request()
	.AddAsync(bookingBusiness);

```