---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var authenticationFlowsPolicy = new AuthenticationFlowsPolicy
{
	SelfServiceSignUp = new SelfServiceSignUpAuthenticationFlowConfiguration
	{
		IsEnabled = true
	}
};

await graphClient.Policies.AuthenticationFlowsPolicy
	.Request()
	.UpdateAsync(authenticationFlowsPolicy);

```