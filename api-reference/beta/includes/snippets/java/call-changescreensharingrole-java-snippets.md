---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ScreenSharingRole role = ScreenSharingRole.VIEWER;

graphClient.communications().calls("{id}")
	.changeScreenSharingRole(role)
	.buildRequest()
	.post();

```