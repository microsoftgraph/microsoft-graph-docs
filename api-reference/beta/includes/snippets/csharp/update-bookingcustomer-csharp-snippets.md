---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var bookingCustomer = new BookingCustomer
{
	DisplayName = "Adele",
	EmailAddress = "adele@relecloud.com"
};

await graphClient.BookingBusinesses["{bookingBusiness-id}"].Customers["{bookingCustomer-id}"]
	.Request()
	.UpdateAsync(bookingCustomer);

```