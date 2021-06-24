---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DirectoryRole directoryRole = graphClient.directoryRoles("fe8f10bf-c9c2-47eb-95cb-c26cc85f1830")
	.buildRequest()
	.get();

```