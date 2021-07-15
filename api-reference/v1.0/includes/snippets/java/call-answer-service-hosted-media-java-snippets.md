---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String callbackUri = "https://bot.contoso.com/api/calls";

LinkedList<Modality> acceptedModalitiesList = new LinkedList<Modality>();
acceptedModalitiesList.add(Modality.AUDIO);

ServiceHostedMediaConfig mediaConfig = new ServiceHostedMediaConfig();
LinkedList<MediaInfo> preFetchMediaList = new LinkedList<MediaInfo>();
MediaInfo preFetchMedia = new MediaInfo();
preFetchMedia.uri = "https://cdn.contoso.com/beep.wav";
preFetchMedia.resourceId = "1D6DE2D4-CD51-4309-8DAA-70768651088E";
preFetchMediaList.add(preFetchMedia);
MediaInfo preFetchMedia1 = new MediaInfo();
preFetchMedia1.uri = "https://cdn.contoso.com/cool.wav";
preFetchMedia1.resourceId = "1D6DE2D4-CD51-4309-8DAA-70768651088F";
preFetchMediaList.add(preFetchMedia1);
mediaConfig.preFetchMedia = preFetchMediaList;

graphClient.communications().calls("57DAB8B1894C409AB240BD8BEAE78896")
	.answer(CallAnswerParameterSet
		.newBuilder()
		.withCallbackUri(callbackUri)
		.withMediaConfig(mediaConfig)
		.withAcceptedModalities(acceptedModalitiesList)
		.withParticipantCapacity(null)
		.build())
	.buildRequest()
	.post();

```