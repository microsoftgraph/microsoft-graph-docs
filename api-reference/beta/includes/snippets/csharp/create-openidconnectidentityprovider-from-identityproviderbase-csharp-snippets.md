---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var identityProviderBase = new OpenIdConnectIdentityProvider
{
	DisplayName = "Login with the Contoso identity provider",
	ClientId = "56433757-cadd-4135-8431-2c9e3fd68ae8",
	ClientSecret = "12345",
	ClaimsMapping = new ClaimsMapping
	{
		UserId = "myUserId",
		GivenName = "myGivenName",
		Surname = "mySurname",
		Email = "myEmail",
		DisplayName = "myDisplayName"
	},
	DomainHint = "mycustomoidc",
	MetadataUrl = "https://mycustomoidc.com/.well-known/openid-configuration",
	ResponseMode = OpenIdConnectResponseMode.Form_post,
	ResponseType = OpenIdConnectResponseTypes.Code,
	Scope = "openid"
};

await graphClient.Identity.IdentityProviders
	.Request()
	.AddAsync(identityProviderBase);

```