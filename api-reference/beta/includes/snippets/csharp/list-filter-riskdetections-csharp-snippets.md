---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var riskDetections = await graphClient.IdentityProtection.RiskDetections
	.Request()
	.Filter("riskEventType eq 'unfamiliarFeatures' or riskLevel eq 'medium'")
	.GetAsync();

```