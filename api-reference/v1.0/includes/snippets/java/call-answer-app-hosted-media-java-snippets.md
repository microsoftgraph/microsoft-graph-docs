---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String callbackUri = "https://bot.contoso.com/api/calls";

LinkedList<Modality> acceptedModalitiesList = new LinkedList<Modality>();
acceptedModalitiesList.add(Modality.AUDIO);

AppHostedMediaConfig mediaConfig = new AppHostedMediaConfig();
mediaConfig.blob = "<Media Session Configuration Blob>";

graphClient.communications().calls("57DAB8B1894C409AB240BD8BEAE78896")
	.answer(CallAnswerParameterSet
		.newBuilder()
		.withCallbackUri(callbackUri)
		.withMediaConfig(mediaConfig)
		.withAcceptedModalities(acceptedModalitiesList)
		.build())
	.buildRequest()
	.post();

```