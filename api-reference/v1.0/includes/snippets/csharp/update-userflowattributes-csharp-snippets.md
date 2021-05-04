---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var identityUserFlowAttribute = new IdentityUserFlowAttribute
{
	Description = "Your new hobby"
};

await graphClient.Identity.UserFlowAttributes["{identityUserFlowAttribute-id}"]
	.Request()
	.UpdateAsync(identityUserFlowAttribute);

```