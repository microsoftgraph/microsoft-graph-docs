---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new QueryOption("$filter", "microsoft.graph.countryNamedLocation/countriesAndRegions/any(c: c eq 'CA')"));

INamedLocationCollectionPage namedLocations = graphClient.identity().conditionalAccess().namedLocations()
	.buildRequest( requestOptions )
	.get();

```