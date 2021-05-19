---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var userFlowAttributes = await graphClient.Identity.UserFlowAttributes
	.Request()
	.GetAsync();

```