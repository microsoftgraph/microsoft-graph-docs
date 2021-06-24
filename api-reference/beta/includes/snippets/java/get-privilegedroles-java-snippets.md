---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrivilegedRoleCollectionPage privilegedRoles = graphClient.privilegedRoles()
	.buildRequest()
	.get();

```