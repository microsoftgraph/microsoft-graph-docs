---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var identityUserFlow = new IdentityUserFlow
{
	UserFlowType = UserFlowType.SignUpOrSignIn,
	UserFlowTypeVersion = 1
};

await graphClient.Identity.UserFlows
	.Request()
	.AddAsync(identityUserFlow);

```