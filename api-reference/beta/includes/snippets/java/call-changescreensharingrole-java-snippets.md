---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ScreenSharingRole role = ScreenSharingRole.VIEWER;

graphClient.communications().calls("{id}")
	.changeScreenSharingRole(CallChangeScreenSharingRoleParameterSet
		.newBuilder()
		.withRole(role)
		.build())
	.buildRequest()
	.post();

```