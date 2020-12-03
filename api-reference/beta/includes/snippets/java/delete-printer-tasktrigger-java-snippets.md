---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.print().printers("1a5f91a7-9bd1-4d5f-bb86-f43554cac51c").taskTriggers("25be207e-1154-491f-aa68-a9f7007d4bec")
	.buildRequest()
	.delete();

```