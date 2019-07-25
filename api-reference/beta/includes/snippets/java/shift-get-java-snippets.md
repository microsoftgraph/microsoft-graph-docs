---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Shift shift = graphClient.teams("{teamId}").schedule().shifts("{shiftId}")
	.buildRequest()
	.get();

```