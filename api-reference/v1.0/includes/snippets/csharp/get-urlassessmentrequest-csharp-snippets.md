---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var threatAssessmentRequest = await graphClient.InformationProtection.ThreatAssessmentRequests["723c35be-8b5a-47ae-29c0-08d76ddb7f5b"]
	.Request()
	.GetAsync();

```