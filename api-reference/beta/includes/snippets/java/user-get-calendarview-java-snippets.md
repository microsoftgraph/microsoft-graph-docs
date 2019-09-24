---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new QueryOption("startDateTime", "2016-01-01T19:00:00.0000000"));
requestOptions.add(new QueryOption("endDateTime", "2016-10-01T19:00:00.0000000"));

IEventCollectionPage calendarView = graphClient.me().calendarView()
	.buildRequest( requestOptions )
	.get();

```