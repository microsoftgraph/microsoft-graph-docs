---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Boolean securityEnabledOnly = true;

graphClient.me()
	.getMemberObjects(DirectoryObjectGetMemberObjectsParameterSet
		.newBuilder()
		.withSecurityEnabledOnly(securityEnabledOnly)
		.build())
	.buildRequest()
	.post();

```