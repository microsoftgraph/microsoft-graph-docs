---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IEducationUserDeltaCollectionPage delta = graphClient.education().users()
	.delta()
	.buildRequest()
	.get();

```