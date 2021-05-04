---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var riskDetection = await graphClient.IdentityProtection.RiskDetections["{riskDetection-id}"]
	.Request()
	.GetAsync();

```