---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.BookingBusinesses["{bookingBusiness-id}"].Customers["{bookingCustomer-id}"]
	.Request()
	.DeleteAsync();

```