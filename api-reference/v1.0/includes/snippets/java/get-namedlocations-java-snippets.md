---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

INamedLocationCollectionPage namedLocations = graphClient.identity().conditionalAccess().namedLocations()
	.buildRequest()
	.filter("microsoft.graph.countryNamedLocation/countriesAndRegions/any(c: c eq 'CA')")
	.get();

```