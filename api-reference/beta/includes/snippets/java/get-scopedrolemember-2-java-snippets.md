---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ScopedRoleMembershipCollectionPage scopedRoleMembers = graphClient.administrativeUnits("{id}").scopedRoleMembers()
	.buildRequest()
	.get();

```