---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IDirectoryObjectCollectionPage externalSponsors = graphClient.identityGovernance().entitlementManagement().connectedOrganizations("{id}").externalSponsors()
	.buildRequest()
	.get();

```