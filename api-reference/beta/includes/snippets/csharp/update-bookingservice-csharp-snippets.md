---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var bookingService = new BookingService
{
	DefaultDuration = new Duration("PT30M")
};

await graphClient.BookingBusinesses["{bookingBusiness-id}"].Services["{bookingService-id}"]
	.Request()
	.UpdateAsync(bookingService);

```