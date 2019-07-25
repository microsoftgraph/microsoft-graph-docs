---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

BookingAppointment bookingAppointment = new BookingAppointment();
bookingAppointment.additionalDataManager().put("@odata.type", new JsonPrimitive("#microsoft.graph.bookingAppointment"));
DateTimeTimeZone end = new DateTimeTimeZone();
end.additionalDataManager().put("@odata.type", new JsonPrimitive("#microsoft.graph.dateTimeTimeZone"));
end.dateTime = "2018-05-06T15:30:00+03:00";
end.timeZone = "UTC";
bookingAppointment.end = end;
DateTimeTimeZone invoiceDate = new DateTimeTimeZone();
invoiceDate.additionalDataManager().put("@odata.type", new JsonPrimitive("#microsoft.graph.dateTimeTimeZone"));
invoiceDate.dateTime = "2018-05-06T15:30:00+03:00";
invoiceDate.timeZone = "UTC";
bookingAppointment.invoiceDate = invoiceDate;
DateTimeTimeZone start = new DateTimeTimeZone();
start.additionalDataManager().put("@odata.type", new JsonPrimitive("#microsoft.graph.dateTimeTimeZone"));
start.dateTime = "2018-05-06T15:00:00+03:00";
start.timeZone = "UTC";
bookingAppointment.start = start;

graphClient.bookingBusinesses("Contosolunchdelivery@M365B489948.onmicrosoft.com").appointments("AAMkADKnAAA=")
	.buildRequest()
	.patch(bookingAppointment);

```