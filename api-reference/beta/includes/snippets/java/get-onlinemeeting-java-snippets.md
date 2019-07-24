---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OnlineMeeting OnlineMeeting = graphClient.app().onlineMeetings("{id}")
	.buildRequest()
	.get();

```