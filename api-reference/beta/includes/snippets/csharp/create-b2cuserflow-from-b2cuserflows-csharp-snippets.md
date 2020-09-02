---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var b2cIdentityUserFlow = new B2cIdentityUserFlow
{
	Id = "Customer",
	UserFlowType = UserFlowType.SignUpOrSignIn,
	UserFlowTypeVersion = 3f
};

await graphClient.Identity.B2cUserFlows
	.Request()
	.AddAsync(b2cIdentityUserFlow);

```