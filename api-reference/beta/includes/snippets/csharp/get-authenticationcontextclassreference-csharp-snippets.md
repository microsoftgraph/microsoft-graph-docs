---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var authenticationContextClassReferences = await graphClient.Identity.ConditionalAccess.AuthenticationContextClassReferences
	.Request()
	.GetAsync();

```