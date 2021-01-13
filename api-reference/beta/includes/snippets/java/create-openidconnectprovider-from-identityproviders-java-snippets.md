---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OpenIdConnectProvider identityProvider = new OpenIdConnectProvider();
identityProvider.name = "Login with the Contoso identity provider";
identityProvider.type = "OpenIDConnect";
identityProvider.clientId = "56433757-cadd-4135-8431-2c9e3fd68ae8";
identityProvider.clientSecret = "12345";
ClaimsMapping claimsMapping = new ClaimsMapping();
claimsMapping.userId = "myUserId";
claimsMapping.givenName = "myGivenName";
claimsMapping.surname = "mySurname";
claimsMapping.email = "myEmail";
claimsMapping.displayName = "myDisplayName";
identityProvider.claimsMapping = claimsMapping;
identityProvider.domainHint = "mycustomoidc";
identityProvider.metadataUrl = "https://mycustomoidc.com/.well-known/openid-configuration";
identityProvider.responseMode = OpenIdConnectResponseMode.FORM_POST;
identityProvider.responseType = EnumSet.of(OpenIdConnectResponseTypes.CODE);
identityProvider.scope = "openid";

graphClient.identityProviders()
	.buildRequest()
	.post(identityProvider);

```