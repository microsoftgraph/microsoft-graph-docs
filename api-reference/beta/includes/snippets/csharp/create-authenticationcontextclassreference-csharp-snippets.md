---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var authenticationContextClassReference = new AuthenticationContextClassReference
{
	Id = "c1",
	DisplayName = "Contoso medium",
	Description = "Medium protection level defined for Contoso policy",
	IsAvailable = true
};

await graphClient.Identity.ConditionalAccess.AuthenticationContextClassReferences
	.Request()
	.AddAsync(authenticationContextClassReference);

```