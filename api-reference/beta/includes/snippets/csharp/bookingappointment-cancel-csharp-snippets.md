---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var cancellationMessage = "Your appointment has been successfully cancelled. Please call us again.";

await graphClient.BookingBusinesses["{bookingBusiness-id}"].Appointments["{bookingAppointment-id}"]
	.Cancel(cancellationMessage)
	.Request()
	.PostAsync();

```