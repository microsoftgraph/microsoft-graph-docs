---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var threatAssessmentRequest = await graphClient.InformationProtection.ThreatAssessmentRequests["49c5ef5b-1f65-444a-e6b9-08d772ea2059"]
	.Request()
	.GetAsync();

```