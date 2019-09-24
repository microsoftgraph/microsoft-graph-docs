---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

boolean securityEnabledOnly = false;

graphClient.groups("{id}")
	.getMemberObjects(securityEnabledOnly)
	.buildRequest()
	.post();

```