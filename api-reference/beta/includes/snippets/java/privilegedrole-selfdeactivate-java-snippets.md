---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.privilegedRoles("{id}")
	.selfDeactivate()
	.buildRequest()
	.post();

```