---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Policies.AuthenticationMethodsPolicy.AuthenticationMethodConfigurations["{authenticationMethodConfiguration-id}"]
	.Request()
	.DeleteAsync();

```