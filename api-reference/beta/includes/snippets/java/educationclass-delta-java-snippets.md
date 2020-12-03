---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IEducationClassDeltaCollectionPage delta = graphClient.education().classes()
	.delta()
	.buildRequest()
	.get();

```