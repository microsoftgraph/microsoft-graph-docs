---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Event event = graphClient.me().events("AAMkADAGu0AABIGYDZAAA=")
	.buildRequest()
	.select("isOnlineMeeting,onlineMeetingProvider,onlineMeeting")
	.get();

```