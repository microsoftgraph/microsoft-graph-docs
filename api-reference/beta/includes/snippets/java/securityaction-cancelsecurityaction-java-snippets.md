---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.security().securityActions("{id}")
	.cancelSecurityAction()
	.buildRequest()
	.post();

```