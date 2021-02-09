---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var identityProvider = new IdentityProvider
{
	ResponseType = OpenIdConnectResponseTypes.Id_token
};

await graphClient.IdentityProviders["OIDC-V1-MyTest-085a8a0c-58cb-4b6d-8e07-1328ea404e1a"]
	.Request()
	.UpdateAsync(identityProvider);

```