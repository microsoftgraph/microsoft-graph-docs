---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IScopedRoleMembershipCollectionPage scopedMembers = graphClient.directoryRoles("{id}").scopedMembers()
	.buildRequest()
	.get();

```