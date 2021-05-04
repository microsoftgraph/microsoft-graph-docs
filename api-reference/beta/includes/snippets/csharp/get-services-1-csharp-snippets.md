---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var services = await graphClient.BookingBusinesses["{bookingBusiness-id}"].Services
	.Request()
	.GetAsync();

```