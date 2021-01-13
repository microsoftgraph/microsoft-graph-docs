---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new QueryOption("startDateTime", "2020-06-12T00:00:00Z"));

IEventDeltaCollectionPage delta = graphClient.me().calendar().events()
	.delta()
	.buildRequest( requestOptions )
	.get();

```