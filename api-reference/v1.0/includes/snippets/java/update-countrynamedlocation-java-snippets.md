---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CountryNamedLocation namedLocation = new CountryNamedLocation();
namedLocation.displayName = "Updated named location without unknown countries and regions";
LinkedList<String> countriesAndRegionsList = new LinkedList<String>();
countriesAndRegionsList.add("CA");
countriesAndRegionsList.add("IN");
namedLocation.countriesAndRegions = countriesAndRegionsList;
namedLocation.includeUnknownCountriesAndRegions = false;

graphClient.identity().conditionalAccess().namedLocations("1c4427fd-0885-4a3d-8b23-09a899ffa959")
	.buildRequest()
	.patch(namedLocation);

```