---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var bookingService = new BookingService
{
	DefaultDuration = "PT30M"
};

await graphClient.BookingBusinesses["Contosolunchdelivery@M365B489948.onmicrosoft.com"].Services["57da6774-a087-4d69-b0e6-6fb82c339976"]
	.Request()
	.UpdateAsync(bookingService);

```