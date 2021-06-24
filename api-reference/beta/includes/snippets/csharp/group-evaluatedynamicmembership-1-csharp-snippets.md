---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var memberId = "319b41e8-d9e4-42f8-bdc9-741113f48b33";

await graphClient.Groups["{group-id}"]
	.EvaluateDynamicMembership(memberId)
	.Request()
	.PostAsync();

```