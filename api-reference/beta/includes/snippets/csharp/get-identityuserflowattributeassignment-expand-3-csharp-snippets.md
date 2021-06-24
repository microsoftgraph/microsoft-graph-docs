---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var identityUserFlowAttributeAssignment = await graphClient.Identity.B2cUserFlows["{b2cIdentityUserFlow-id}"].UserAttributeAssignments["{identityUserFlowAttributeAssignment-id}"]
	.Request()
	.Expand("userAttribute")
	.GetAsync();

```