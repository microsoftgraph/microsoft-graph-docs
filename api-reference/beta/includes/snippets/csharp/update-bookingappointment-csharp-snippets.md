---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var bookingAppointment = new BookingAppointment
{
	AdditionalData = new Dictionary<string, object>()
	{
		{"@odata.type","#microsoft.graph.bookingAppointment"}
	},
	End = new DateTimeTimeZone
	{
		AdditionalData = new Dictionary<string, object>()
		{
			{"@odata.type","#microsoft.graph.dateTimeTimeZone"}
		},
		DateTime = "2018-05-06T12:30:00+00:00",
		TimeZone = "UTC"
	},
	InvoiceDate = new DateTimeTimeZone
	{
		AdditionalData = new Dictionary<string, object>()
		{
			{"@odata.type","#microsoft.graph.dateTimeTimeZone"}
		},
		DateTime = "2018-05-06T12:30:00+00:00",
		TimeZone = "UTC"
	},
	Start = new DateTimeTimeZone
	{
		AdditionalData = new Dictionary<string, object>()
		{
			{"@odata.type","#microsoft.graph.dateTimeTimeZone"}
		},
		DateTime = "2018-05-06T12:00:00+00:00",
		TimeZone = "UTC"
	}
};

await graphClient.BookingBusinesses["Contosolunchdelivery@M365B489948.onmicrosoft.com"].Appointments["AAMkADKnAAA="]
	.Request()
	.UpdateAsync(bookingAppointment);

```