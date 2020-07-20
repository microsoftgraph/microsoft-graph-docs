---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var tokenIssuancePolicies = await graphClient.Applications["{id}"].TokenIssuancePolicies
	.Request()
	.GetAsync();

```