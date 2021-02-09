---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.communications().calls("2e1a0b00-2db4-4022-9570-243709c565ab")
	.keepAlive()
	.buildRequest()
	.post();

```