---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IScopedRoleMembershipCollectionPage scopedRoleMembers = graphClient.administrativeUnits("{id}").scopedRoleMembers()
	.buildRequest()
	.get();

```