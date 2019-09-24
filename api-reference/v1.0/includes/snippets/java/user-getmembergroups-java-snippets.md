---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

boolean securityEnabledOnly = true;

graphClient.me()
	.getMemberGroups(securityEnabledOnly)
	.buildRequest()
	.post();

```