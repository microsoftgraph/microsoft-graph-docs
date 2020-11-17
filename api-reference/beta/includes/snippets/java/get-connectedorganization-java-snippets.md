---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ConnectedOrganization connectedOrganization = graphClient.identityGovernance().entitlementManagement().connectedOrganizations("{id}")
	.buildRequest()
	.get();

```