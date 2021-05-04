---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Identity.B2cUserFlows["{b2cIdentityUserFlow-id}"].PostFederationSignup.Reference
	.Request()
	.PutAsync("{id}");

```