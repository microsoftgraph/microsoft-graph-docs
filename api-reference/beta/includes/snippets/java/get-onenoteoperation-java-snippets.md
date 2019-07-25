---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OnenoteOperation onenoteOperation = graphClient.me().onenote().operations("{id}")
	.buildRequest()
	.get();

```