---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var riskDetections = await graphClient.RiskDetections
	.Request()
	.Filter("riskType eq 'unfamiliarFeatures' or riskLevel eq 'medium'")
	.GetAsync();

```