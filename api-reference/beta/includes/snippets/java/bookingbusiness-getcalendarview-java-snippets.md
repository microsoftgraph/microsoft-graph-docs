---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new QueryOption("start", "2018-04-30T00:00:00Z"));
requestOptions.add(new QueryOption("end", "2018-05-10T00:00:00Z"));

IBookingAppointmentCollectionPage calendarView = graphClient.bookingBusinesses("Contosolunchdelivery@M365B489948.onmicrosoft.com").calendarView()
	.buildRequest( requestOptions )
	.get();

```