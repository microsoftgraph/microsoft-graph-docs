---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

GroupCollectionPage incompatibleGroups = graphClient.identityGovernance().entitlementManagement().accessPackages("{id}").incompatibleGroups()
	.buildRequest()
	.get();

```