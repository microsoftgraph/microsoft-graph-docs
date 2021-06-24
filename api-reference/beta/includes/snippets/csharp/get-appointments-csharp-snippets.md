---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var appointments = await graphClient.BookingBusinesses["{bookingBusiness-id}"].Appointments
	.Request()
	.GetAsync();

```