---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TimeOff timeOff = graphClient.teams("{teamId}").schedule().timesOff("{timeOffId}")
	.buildRequest()
	.get();

```