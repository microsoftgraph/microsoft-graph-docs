---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var bookingAppointment = new BookingAppointment
{
	End = new DateTimeTimeZone
	{
		DateTime = "2018-05-06T12:30:00+00:00",
		TimeZone = "UTC"
	},
	InvoiceDate = new DateTimeTimeZone
	{
		DateTime = "2018-05-06T12:30:00+00:00",
		TimeZone = "UTC"
	},
	Start = new DateTimeTimeZone
	{
		DateTime = "2018-05-06T12:00:00+00:00",
		TimeZone = "UTC"
	}
};

await graphClient.BookingBusinesses["{bookingBusiness-id}"].Appointments["{bookingAppointment-id}"]
	.Request()
	.UpdateAsync(bookingAppointment);

```