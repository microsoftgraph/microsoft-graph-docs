---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String callbackUri = "callbackUri-value";

MediaConfig mediaConfig = new MediaConfig();
mediaConfig.additionalDataManager().put("@odata.type", new JsonPrimitive("#microsoft.graph.appHostedMediaConfig"));
mediaConfig.blob = "<media config blob>";

LinkedList<String> acceptedModalitiesList = new LinkedList<String>();
acceptedModalitiesList.add("audio");

graphClient.app().calls("{id}")
	.answer(callbackUri,mediaConfig,acceptedModalitiesList)
	.buildRequest()
	.post();

```