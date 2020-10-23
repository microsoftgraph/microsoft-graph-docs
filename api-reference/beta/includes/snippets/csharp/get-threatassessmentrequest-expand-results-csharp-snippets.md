---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var threatAssessmentRequest = await graphClient.InformationProtection.ThreatAssessmentRequests["11922306-b25b-4605-ff0d-08d772fcf996"]
	.Request()
	.Expand("results")
	.GetAsync();

```