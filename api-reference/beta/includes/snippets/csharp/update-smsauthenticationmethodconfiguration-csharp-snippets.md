---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var authenticationMethodConfiguration = new SmsAuthenticationMethodConfiguration
{
	Id = "Sms",
	State = AuthenticationMethodState.Enabled
};

await graphClient.Policies.AuthenticationMethodsPolicy.AuthenticationMethodConfigurations["{authenticationMethodConfiguration-id}"]
	.Request()
	.UpdateAsync(authenticationMethodConfiguration);

```