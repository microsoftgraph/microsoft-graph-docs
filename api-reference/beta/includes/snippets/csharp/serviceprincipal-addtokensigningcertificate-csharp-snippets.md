---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var displayName = "CN=customDisplayName";

var endDateTime = DateTimeOffset.Parse("2024-01-25T00:00:00Z");

await graphClient.ServicePrincipals["{servicePrincipal-id}"]
	.AddTokenSigningCertificate(displayName,endDateTime)
	.Request()
	.PostAsync();

```