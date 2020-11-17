---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Notebook notebook = graphClient.me().onenote().notebooks("{id}")
	.buildRequest()
	.get();

```