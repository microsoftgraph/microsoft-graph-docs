---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Call Call = graphClient.app().calls("{id}")
	.buildRequest()
	.get();

```