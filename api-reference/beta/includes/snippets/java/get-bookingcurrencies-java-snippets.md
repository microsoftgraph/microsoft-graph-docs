---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IBookingCurrencyCollectionPage bookingCurrencies = graphClient.bookingCurrencies()
	.buildRequest()
	.get();

```