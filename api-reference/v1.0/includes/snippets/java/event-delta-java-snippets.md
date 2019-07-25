---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new QueryOption("startdatetime", "{start_datetime}"));
requestOptions.add(new QueryOption("enddatetime", "{end_datetime}"));

IEventDeltaCollectionPage delta = graphClient.me().calendarView()
	.delta()
	.buildRequest( requestOptions )
	.get();

```