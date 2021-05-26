---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ConnectedOrganizationCollectionPage connectedOrganizations = graphClient.identityGovernance().entitlementManagement().connectedOrganizations()
	.buildRequest()
	.get();

```