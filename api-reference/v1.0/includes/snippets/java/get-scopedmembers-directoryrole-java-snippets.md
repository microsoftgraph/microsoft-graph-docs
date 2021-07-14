---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ScopedRoleMembershipCollectionPage scopedMembers = graphClient.directoryRoles("41d12a2f-caa8-4e3e-ba14-05e5102ce085").scopedMembers()
	.buildRequest()
	.get();

```