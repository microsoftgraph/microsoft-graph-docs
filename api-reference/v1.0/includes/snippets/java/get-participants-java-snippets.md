---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IParticipantCollectionPage participants = graphClient.communications().calls("7531d31f-d10d-44de-802f-c569dbca451c").participants()
	.buildRequest()
	.get();

```