---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

BookingAppointment bookingAppointment = new BookingAppointment();
DateTimeTimeZone end = new DateTimeTimeZone();
end.dateTime = "2018-05-06T12:30:00+00:00";
end.timeZone = "UTC";
bookingAppointment.end = end;
DateTimeTimeZone invoiceDate = new DateTimeTimeZone();
invoiceDate.dateTime = "2018-05-06T12:30:00+00:00";
invoiceDate.timeZone = "UTC";
bookingAppointment.invoiceDate = invoiceDate;
DateTimeTimeZone start = new DateTimeTimeZone();
start.dateTime = "2018-05-06T12:00:00+00:00";
start.timeZone = "UTC";
bookingAppointment.start = start;

graphClient.bookingBusinesses("Contosolunchdelivery@M365B489948.onmicrosoft.com").appointments("AAMkADKnAAA=")
	.buildRequest()
	.patch(bookingAppointment);

```