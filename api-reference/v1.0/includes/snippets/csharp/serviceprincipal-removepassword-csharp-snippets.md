---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var keyId = Guid.Parse("f0b0b335-1d71-4883-8f98-567911bfdca6");

await graphClient.ServicePrincipals["{servicePrincipal-id}"]
	.RemovePassword(keyId)
	.Request()
	.PostAsync();

```