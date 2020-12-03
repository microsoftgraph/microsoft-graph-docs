---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ConnectedOrganization connectedOrganization = new ConnectedOrganization();
connectedOrganization.displayName = "Connected organization name";
connectedOrganization.description = "Connected organization description";
LinkedList<IdentitySource> identitySourcesList = new LinkedList<IdentitySource>();
DomainIdentitySource identitySources = new DomainIdentitySource();
identitySources.domainName = "example.com";
identitySources.displayName = "example.com";
identitySourcesList.add(identitySources);
connectedOrganization.identitySources = identitySourcesList;
connectedOrganization.state = ConnectedOrganizationState.PROPOSED;

graphClient.identityGovernance().entitlementManagement().connectedOrganizations()
	.buildRequest()
	.post(connectedOrganization);

```