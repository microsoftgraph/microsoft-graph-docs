---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var authenticationMethodConfiguration = new Fido2AuthenticationMethodConfiguration
{
	State = AuthenticationMethodState.Enabled,
	IsAttestationEnforced = true
};

await graphClient.Policies.AuthenticationMethodsPolicy.AuthenticationMethodConfigurations["{authenticationMethodConfiguration-id}"]
	.Request()
	.UpdateAsync(authenticationMethodConfiguration);

```