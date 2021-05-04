---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var b2cAuthenticationMethodsPolicy = new B2cAuthenticationMethodsPolicy
{
	IsEmailPasswordAuthenticationEnabled = false,
	IsUserNameAuthenticationEnabled = true,
	IsPhoneOneTimePasswordAuthenticationEnabled = true
};

await graphClient.Policies.B2cAuthenticationMethodsPolicy
	.Request()
	.UpdateAsync(b2cAuthenticationMethodsPolicy);

```