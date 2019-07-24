---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Participant Participant = graphClient.app().calls("{id}").participants("{id}")
	.buildRequest()
	.get();

```