---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var identityUserFlowAttributeAssignment = new IdentityUserFlowAttributeAssignment
{
	UserInputType = IdentityUserFlowAttributeInputType.TextBox
};

await graphClient.Identity.B2xUserFlows["{b2xIdentityUserFlow-id}"].UserAttributeAssignments["{identityUserFlowAttributeAssignment-id}"]
	.Request()
	.UpdateAsync(identityUserFlowAttributeAssignment);

```