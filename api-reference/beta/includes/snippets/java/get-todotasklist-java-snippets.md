---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TodoTaskList todoTaskList = graphClient.me().todo().lists("AAMkADIyAAAAABrJAAA=")
	.buildRequest()
	.get();

```