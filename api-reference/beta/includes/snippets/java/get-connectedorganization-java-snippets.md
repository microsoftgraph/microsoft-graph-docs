---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ConnectedOrganization connectedOrganization = graphClient.identityGovernance().entitlementManagement().connectedOrganizations("{id}")
	.buildRequest()
	.get();

```