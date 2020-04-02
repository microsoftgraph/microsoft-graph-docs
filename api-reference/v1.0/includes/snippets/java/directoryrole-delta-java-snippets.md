---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IDirectoryRoleDeltaCollectionPage delta = graphClient.directoryRoles()
	.delta()
	.buildRequest()
	.get();

```