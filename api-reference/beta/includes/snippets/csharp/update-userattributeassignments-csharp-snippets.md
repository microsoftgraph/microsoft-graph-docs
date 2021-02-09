---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var identityUserFlowAttributeAssignment = new IdentityUserFlowAttributeAssignment
{
	UserInputType = IdentityUserFlowAttributeInputType.TextBox
};

await graphClient.Identity.B2cUserFlows["{b2cIdentityUserFlowId}"].UserAttributeAssignments["{id}"]
	.Request()
	.UpdateAsync(identityUserFlowAttributeAssignment);

```