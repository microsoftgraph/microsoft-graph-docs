---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ScopedRoleMembershipCollectionPage scopedMembers = graphClient.directoryRoles("roleTemplateId=fdd7a751-b60b-444a-984c-02652fe8fa1c").scopedMembers()
	.buildRequest()
	.get();

```