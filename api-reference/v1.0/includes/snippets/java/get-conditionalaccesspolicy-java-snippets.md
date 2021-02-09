---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ConditionalAccessPolicy conditionalAccessPolicy = graphClient.identity().conditionalAccess().policies("{id}")
	.buildRequest()
	.get();

```