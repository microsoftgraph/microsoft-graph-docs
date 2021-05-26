---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var bookingCustomer = new BookingCustomer
{
	DisplayName = "Joni Sherman",
	EmailAddress = "jonis@relecloud.com"
};

await graphClient.BookingBusinesses["{bookingBusiness-id}"].Customers
	.Request()
	.AddAsync(bookingCustomer);

```