---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OpenIdConnectIdentityProvider identityProviderBase = new OpenIdConnectIdentityProvider();
identityProviderBase.displayName = "Login with the Contoso identity provider";
identityProviderBase.clientId = "56433757-cadd-4135-8431-2c9e3fd68ae8";
identityProviderBase.clientSecret = "12345";
ClaimsMapping claimsMapping = new ClaimsMapping();
claimsMapping.userId = "myUserId";
claimsMapping.givenName = "myGivenName";
claimsMapping.surname = "mySurname";
claimsMapping.email = "myEmail";
claimsMapping.displayName = "myDisplayName";
identityProviderBase.claimsMapping = claimsMapping;
identityProviderBase.domainHint = "mycustomoidc";
identityProviderBase.metadataUrl = "https://mycustomoidc.com/.well-known/openid-configuration";
identityProviderBase.responseMode = OpenIdConnectResponseMode.FORM_POST;
identityProviderBase.responseType = EnumSet.of(OpenIdConnectResponseTypes.CODE);
identityProviderBase.scope = "openid";

graphClient.identity().identityProviders()
	.buildRequest()
	.post(identityProviderBase);

```