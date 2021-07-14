---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var authenticationMethodsPolicy = await graphClient.Policies.AuthenticationMethodsPolicy
	.Request()
	.GetAsync();

```