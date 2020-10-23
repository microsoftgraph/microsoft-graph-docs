---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Participant participant = graphClient.communications().calls("7531d31f-d10d-44de-802f-c569dbca451c").participants("7e1b4346-85a6-4bdd-abe3-d11c5d420efe")
	.buildRequest()
	.get();

```