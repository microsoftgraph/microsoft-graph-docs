---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var credentialUserRegistrationsSummary = await graphClient.TenantRelationships.ManagedTenants.CredentialUserRegistrationsSummaries["{managedTenants.credentialUserRegistrationsSummary-id}"]
	.Request()
	.GetAsync();

```