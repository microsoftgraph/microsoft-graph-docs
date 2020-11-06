---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var b2xIdentityUserFlow = new B2xIdentityUserFlow
{
	Id = "Partner",
	UserFlowType = UserFlowType.SignUpOrSignIn,
	UserFlowTypeVersion = 1f,
	IdentityProviders = (IB2xIdentityUserFlowIdentityProvidersCollectionPage)new List<IdentityProvider>()
	{
		new IdentityProvider
		{
			Id = "Facebook-OAuth",
			Type = "Facebook",
			Name = "Facebook"
		}
	}
};

await graphClient.Identity.B2xUserFlows
	.Request()
	.AddAsync(b2xIdentityUserFlow);

```