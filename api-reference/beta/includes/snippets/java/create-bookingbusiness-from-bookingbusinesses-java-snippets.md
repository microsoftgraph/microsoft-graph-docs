---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

BookingBusiness bookingBusiness = new BookingBusiness();
bookingBusiness.displayName = "Fourth Coffee";
PhysicalAddress address = new PhysicalAddress();
address.type = PhysicalAddressType.UNKNOWN;
address.postOfficeBox = "P.O. Box 123";
address.street = "4567 Main Street";
address.city = "Buffalo";
address.state = "NY";
address.countryOrRegion = "USA";
address.postalCode = "98052";
bookingBusiness.address = address;
bookingBusiness.phone = "206-555-0100";
bookingBusiness.email = "manager@fourthcoffee.com";
bookingBusiness.webSiteUrl = "https://www.fourthcoffee.com";
bookingBusiness.defaultCurrencyIso = "USD";

graphClient.bookingBusinesses()
	.buildRequest()
	.post(bookingBusiness);

```