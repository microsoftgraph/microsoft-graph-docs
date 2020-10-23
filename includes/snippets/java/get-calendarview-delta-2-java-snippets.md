---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("Prefer", "odata.maxpagesize=2"));
requestOptions.add(new QueryOption("$skiptoken", "R0usmcCM996atia_s"));

IEventDeltaCollectionPage delta = graphClient.me().calendarView()
	.delta()
	.buildRequest( requestOptions )
	.get();

```