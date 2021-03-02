---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var identityUserFlowAttributeAssignment = await graphClient.Identity.B2cUserFlows["{id}"].UserAttributeAssignments["{id}"]
	.Request()
	.Expand("userAttribute")
	.GetAsync();

```