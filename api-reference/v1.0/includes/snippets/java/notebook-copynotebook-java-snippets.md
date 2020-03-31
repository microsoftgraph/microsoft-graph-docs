---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String groupId = "groupId-value";

String renameAs = "renameAs-value";

graphClient.me().onenote().notebooks("{id}")
	.copyNotebook(groupId,renameAs,null,null,null)
	.buildRequest()
	.post();

```