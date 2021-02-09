---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ItemPatent itemPatent = graphClient.me().profile().patents("{id}")
	.buildRequest()
	.get();

```