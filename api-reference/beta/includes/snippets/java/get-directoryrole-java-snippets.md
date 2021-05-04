---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DirectoryRole directoryRole = graphClient.directoryRoles("{id}")
	.buildRequest()
	.get();

```