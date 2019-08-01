---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("Authorization", "Bearer <TOKEN>"));

IParticipantCollectionPage participants = graphClient.app().calls("57DAB8B1894C409AB240BD8BEAE78896").participants()
	.buildRequest( requestOptions )
	.get();

```