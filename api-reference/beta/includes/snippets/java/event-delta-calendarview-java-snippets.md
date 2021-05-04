---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new QueryOption("startDateTime", "2020-06-01T00:00:00Z"));
requestOptions.add(new QueryOption("endDateTime", "2020-06-10T00:00:00Z"));

IEventDeltaCollectionPage delta = graphClient.me().calendars("AAMkADI5M1BbeAAA=").calendarView()
	.delta()
	.buildRequest( requestOptions )
	.get();

```