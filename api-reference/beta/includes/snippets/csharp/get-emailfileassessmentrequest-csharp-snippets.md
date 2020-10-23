---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var threatAssessmentRequest = await graphClient.InformationProtection.ThreatAssessmentRequests["ab2ad9b3-2213-4091-ae0c-08d76ddbcacf"]
	.Request()
	.GetAsync();

```