---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("Prefer", "odata.maxpagesize=2"));
requestOptions.add(new QueryOption("startdatetime", "2016-12-01T00:00:00Z"));
requestOptions.add(new QueryOption("enddatetime", "2016-12-30T00:00:00Z"));

IEventDeltaCollectionPage delta = graphClient.me().calendarView()
	.delta()
	.buildRequest( requestOptions )
	.get();

```