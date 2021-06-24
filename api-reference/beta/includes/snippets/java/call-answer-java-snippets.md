---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String callbackUri = "callbackUri-value";

AppHostedMediaConfig mediaConfig = new AppHostedMediaConfig();
mediaConfig.blob = "<Media Session Configuration Blob>";

LinkedList<Modality> acceptedModalitiesList = new LinkedList<Modality>();
acceptedModalitiesList.add(Modality.AUDIO);

int participantCapacity = 200;

graphClient.communications().calls("{id}")
	.answer(CallAnswerParameterSet
		.newBuilder()
		.withCallbackUri(callbackUri)
		.withMediaConfig(mediaConfig)
		.withAcceptedModalities(acceptedModalitiesList)
		.withParticipantCapacity(participantCapacity)
		.build())
	.buildRequest()
	.post();

```