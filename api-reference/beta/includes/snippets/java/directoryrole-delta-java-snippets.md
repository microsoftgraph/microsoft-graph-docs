---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DirectoryRoleDeltaCollectionPage delta = graphClient.directoryRoles()
	.delta()
	.buildRequest()
	.get();

```