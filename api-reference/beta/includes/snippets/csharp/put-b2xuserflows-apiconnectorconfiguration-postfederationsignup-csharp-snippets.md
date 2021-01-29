---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Identity.B2xUserFlows["B2X_1_testuserflow"].PostFederationSignup.Reference
	.Request()
	.PutAsync("{id}");

```