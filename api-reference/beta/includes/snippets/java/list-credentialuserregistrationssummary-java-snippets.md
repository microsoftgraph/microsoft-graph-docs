---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CredentialUserRegistrationsSummaryCollectionPage credentialUserRegistrationsSummaries = graphClient.tenantRelationships().managedTenants().credentialUserRegistrationsSummaries()
	.buildRequest()
	.get();

```