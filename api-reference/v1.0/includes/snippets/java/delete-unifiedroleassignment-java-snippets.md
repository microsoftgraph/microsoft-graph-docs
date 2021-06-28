---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.roleManagement().directory().roleAssignments("lAPpYvVpN0KRkAEhdxReEJC2sEqbR_9Hr48lds9SGHI-1")
	.buildRequest()
	.delete();

```