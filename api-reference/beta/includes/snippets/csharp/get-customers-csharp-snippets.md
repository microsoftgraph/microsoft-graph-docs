---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var customers = await graphClient.BookingBusinesses["{bookingBusiness-id}"].Customers
	.Request()
	.GetAsync();

```