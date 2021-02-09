---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Conversation conversation = graphClient.groups("{id}").conversations("{id}")
	.buildRequest()
	.get();

```