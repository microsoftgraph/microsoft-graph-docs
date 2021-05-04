---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DirectoryRoleCollectionPage directoryRoles = graphClient.directoryRoles()
	.buildRequest()
	.get();

```