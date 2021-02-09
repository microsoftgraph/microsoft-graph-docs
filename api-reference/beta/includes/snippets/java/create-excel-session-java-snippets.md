---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Boolean persistChanges = true;

graphClient.me().drive().items("{id}").workbook()
	.createSession(persistChanges)
	.buildRequest()
	.post();

```