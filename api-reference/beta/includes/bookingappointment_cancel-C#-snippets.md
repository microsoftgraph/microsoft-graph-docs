
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var cancellationMessage = "Your appointment has been successfully cancelled. Please call us again.";

await graphClient.BookingBusinesses["Contosolunchdelivery@M365B489948.onmicrosoft.com"].Appointments["AAMkADKoAAA="]
	.cancel(bookingAppointment,cancellationMessage);
	.Request()
	.PostAsync()

```