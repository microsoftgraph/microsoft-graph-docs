---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var identityUserFlowAttribute = new IdentityUserFlowAttribute
{
	Description = "Your new hobby"
};

await graphClient.Identity.UserFlowAttributes["extension_d09380e2b4c642b9a203fb816a04a7ad_Hobby"]
	.Request()
	.UpdateAsync(identityUserFlowAttribute);

```