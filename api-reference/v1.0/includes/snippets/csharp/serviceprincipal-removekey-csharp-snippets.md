---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var keyId = Guid.Parse("f0b0b335-1d71-4883-8f98-567911bfdca6");

var proof = "eyJ0eXAiOiJ...";

await graphClient.ServicePrincipals["{id}"]
	.RemoveKey(keyId,proof)
	.Request()
	.PostAsync();

```