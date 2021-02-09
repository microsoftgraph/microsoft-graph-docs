---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Program program = new Program();
program.displayName = "testprogram3 new name";

graphClient.programs("7e59d237-2fb0-4e5d-b7bb-d4f9f9129213")
	.buildRequest()
	.patch(program);

```