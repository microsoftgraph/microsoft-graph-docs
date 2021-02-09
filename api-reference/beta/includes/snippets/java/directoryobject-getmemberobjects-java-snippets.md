---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Boolean securityEnabledOnly = true;

graphClient.me()
	.getMemberObjects(securityEnabledOnly)
	.buildRequest()
	.post();

```