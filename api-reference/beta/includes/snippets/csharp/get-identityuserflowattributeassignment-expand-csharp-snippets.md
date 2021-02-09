---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var userAttributeAssignments = await graphClient.Identity.B2xUserFlows["{id}"].UserAttributeAssignments
	.Request()
	.Expand("userAttribute")
	.GetAsync();

```