---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

BookingBusinessCollectionPage bookingBusinesses = graphClient.bookingBusinesses()
	.buildRequest()
	.get();

```