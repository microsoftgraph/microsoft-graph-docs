---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new QueryOption("startDateTime", "2020-01-01T19:00:00-08:00"));
requestOptions.add(new QueryOption("endDateTime", "2020-01-02T19:00:00-08:00"));

EventCollectionPage calendarView = graphClient.me().calendarView()
	.buildRequest( requestOptions )
	.get();

```