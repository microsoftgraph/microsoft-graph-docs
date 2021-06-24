---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var bookingCustomer = await graphClient.BookingBusinesses["{bookingBusiness-id}"].Customers["{bookingCustomer-id}"]
	.Request()
	.GetAsync();

```