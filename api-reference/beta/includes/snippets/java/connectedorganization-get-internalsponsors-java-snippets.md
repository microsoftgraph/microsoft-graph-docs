---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IDirectoryObjectCollectionPage internalSponsors = graphClient.identityGovernance().entitlementManagement().connectedOrganizations("{id}").internalSponsors()
	.buildRequest()
	.get();

```