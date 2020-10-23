---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var credentialUserRegistrationDetails = await graphClient.Reports.CredentialUserRegistrationDetails
	.Request()
	.GetAsync();

```