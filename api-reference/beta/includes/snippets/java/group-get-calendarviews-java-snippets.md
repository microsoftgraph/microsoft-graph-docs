---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("Prefer", "outlook.body-content-type=\"text\""));
requestOptions.add(new QueryOption("startDateTime", "2017-01-01T19:00:00-08:00"));
requestOptions.add(new QueryOption("endDateTime", "2017-10-01T19:00:00.00-08:00"));

IEventCollectionPage calendarView = graphClient.groups("02bd9fd6-8f93-4758-87c3-1fb73740a315").calendarView()
	.buildRequest( requestOptions )
	.get();

```