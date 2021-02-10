---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var identityUserFlowAttributeAssignment = new IdentityUserFlowAttributeAssignment
{
	IsOptional = false,
	RequiresVerification = false,
	UserInputType = IdentityUserFlowAttributeInputType.TextBox,
	DisplayName = "Shoe size",
	UserAttributeValues = new List<UserAttributeValuesItem>()
	{
	},
	UserAttribute = new IdentityUserFlowAttribute
	{
		Id = "extension_guid_shoeSize"
	}
};

await graphClient.Identity.B2xUserFlows["B2X_1_Partner"].UserAttributeAssignments
	.Request()
	.AddAsync(identityUserFlowAttributeAssignment);

```