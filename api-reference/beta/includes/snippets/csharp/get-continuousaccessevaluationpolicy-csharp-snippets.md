---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var continuousAccessEvaluationPolicy = await graphClient.Identity.ContinuousAccessEvaluationPolicy
	.Request()
	.GetAsync();

```