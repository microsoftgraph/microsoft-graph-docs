---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Alert alert = graphClient.security().alerts("{id}")
	.buildRequest()
	.get();

```