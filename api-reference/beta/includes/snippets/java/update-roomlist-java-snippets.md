---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

RoomList place = new RoomList();
place.displayName = "Building 1";
place.phone = "555-555-0100";
PhysicalAddress address = new PhysicalAddress();
address.street = "4567 Main Street";
address.city = "Buffalo";
address.state = "NY";
address.postalCode = "98052";
address.countryOrRegion = "USA";
place.address = address;
OutlookGeoCoordinates geoCoordinates = new OutlookGeoCoordinates();
geoCoordinates.altitude = 0d;
geoCoordinates.latitude = 47.0d;
geoCoordinates.longitude = -122.0d;
geoCoordinates.accuracy = 0d;
geoCoordinates.altitudeAccuracy = 0d;
place.geoCoordinates = geoCoordinates;

graphClient.places("Building1RroomList@contoso.onmicrosoft.com")
	.buildRequest()
	.patch(place);

```