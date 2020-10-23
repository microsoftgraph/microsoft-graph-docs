---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String callbackUri = "https://bot.contoso.com/api/calls";

LinkedList<String> acceptedModalitiesList = new LinkedList<String>();
acceptedModalitiesList.add("audio");

AppHostedMediaConfig mediaConfig = new AppHostedMediaConfig();
mediaConfig.blob = "<Media Session Configuration Blob>";

graphClient.communications().calls("57DAB8B1894C409AB240BD8BEAE78896")
	.answer(callbackUri,mediaConfig,acceptedModalitiesList)
	.buildRequest()
	.post();

```