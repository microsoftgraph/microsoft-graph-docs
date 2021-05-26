---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var groupLifecyclePolicies = await graphClient.Groups["{group-id}"].GroupLifecyclePolicies
	.Request()
	.GetAsync();

```