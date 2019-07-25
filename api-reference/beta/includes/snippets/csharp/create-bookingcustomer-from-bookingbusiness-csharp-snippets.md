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

await graphClient.BookingBusinesses["Contosolunchdelivery@M365B489948.onmicrosoft.com"].Customers
	.Request()
	.AddAsync(bookingCustomer);

```