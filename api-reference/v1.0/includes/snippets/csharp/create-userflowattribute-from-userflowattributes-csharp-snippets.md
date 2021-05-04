---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var identityUserFlowAttribute = new IdentityUserFlowAttribute
{
	DisplayName = "Hobby",
	Description = "Your hobby",
	DataType = IdentityUserFlowAttributeDataType.String
};

await graphClient.Identity.UserFlowAttributes
	.Request()
	.AddAsync(identityUserFlowAttribute);

```