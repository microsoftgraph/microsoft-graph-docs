---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IBookingAppointmentCollectionPage appointments = graphClient.bookingBusinesses("Contosolunchdelivery@M365B489948.onmicrosoft.com").appointments()
	.buildRequest()
	.get();

```