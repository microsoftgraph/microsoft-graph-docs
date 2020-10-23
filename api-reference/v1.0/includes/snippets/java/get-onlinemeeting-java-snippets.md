---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new QueryOption("$filter", "VideoTeleconferenceId eq '123456789'"));

IOnlineMeetingCollectionPage onlineMeetings = graphClient.communications().onlineMeetings()
	.buildRequest( requestOptions )
	.get();

```