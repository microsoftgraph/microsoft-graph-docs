---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var riskDetection = await graphClient.IdentityProtection.RiskDetections["c2b6c2b9-dddc-acd0-2b39-d519d803dbc3"]
	.Request()
	.GetAsync();

```