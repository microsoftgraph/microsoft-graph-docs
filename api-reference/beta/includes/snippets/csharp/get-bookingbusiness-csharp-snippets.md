---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var bookingBusiness = await graphClient.BookingBusinesses["{bookingBusiness-id}"]
	.Request()
	.GetAsync();

```