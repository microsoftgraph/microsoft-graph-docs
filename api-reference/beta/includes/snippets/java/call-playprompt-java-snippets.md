---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String clientContext = "d45324c1-fcb5-430a-902c-f20af696537c";

LinkedList<Prompt> promptsList = new LinkedList<Prompt>();
MediaPrompt prompts = new MediaPrompt();
MediaInfo mediaInfo = new MediaInfo();
mediaInfo.uri = "https://cdn.contoso.com/beep.wav";
mediaInfo.resourceId = "1D6DE2D4-CD51-4309-8DAA-70768651088E";
prompts.mediaInfo = mediaInfo;

promptsList.add(prompts);

Boolean loop = false;

graphClient.communications().calls("57dab8b1-894c-409a-b240-bd8beae78896")
	.playPrompt(promptsList,loop,clientContext)
	.buildRequest()
	.post();

```