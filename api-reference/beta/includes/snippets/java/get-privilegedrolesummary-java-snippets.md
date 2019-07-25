---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrivilegedRoleSummary privilegedRoleSummary = graphClient.privilegedRoles("{id}").summary()
	.buildRequest()
	.get();

```