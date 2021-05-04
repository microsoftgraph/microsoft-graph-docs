---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

BookingCurrencyCollectionPage bookingCurrencies = graphClient.bookingCurrencies()
	.buildRequest()
	.get();

```