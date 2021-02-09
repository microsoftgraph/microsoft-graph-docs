---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.identityGovernance().entitlementManagement().connectedOrganizations("{connectedOrganizationId}").internalSponsors("{id}").reference()
	.buildRequest()
	.delete();

```