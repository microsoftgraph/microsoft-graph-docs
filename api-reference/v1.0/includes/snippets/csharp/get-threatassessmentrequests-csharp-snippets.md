---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var threatAssessmentRequests = await graphClient.InformationProtection.ThreatAssessmentRequests
	.Request()
	.GetAsync();

```