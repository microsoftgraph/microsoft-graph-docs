---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DirectoryRole directoryRole = new DirectoryRole();
directoryRole.roleTemplateId = "fe930be7-5e62-47db-91af-98c3a49a38b1";

graphClient.directoryRoles()
	.buildRequest()
	.post(directoryRole);

```