---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var b2cIdentityUserFlow = new B2cIdentityUserFlow
{
	Id = "Customer",
	UserFlowType = UserFlowType.SignUpOrSignIn,
	UserFlowTypeVersion = 3f,
	IdentityProviders = (IB2cIdentityUserFlowIdentityProvidersCollectionPage)new List<IdentityProvider>()
	{
		new IdentityProvider
		{
			Id = "Facebook-OAuth",
			Type = "Facebook",
			Name = "Facebook"
		}
	}
};

await graphClient.Identity.B2cUserFlows
	.Request()
	.AddAsync(b2cIdentityUserFlow);

```