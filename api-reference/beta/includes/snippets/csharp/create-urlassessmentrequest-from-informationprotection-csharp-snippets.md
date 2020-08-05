---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var threatAssessmentRequest = new UrlAssessmentRequestObject
{
	Url = "http://test.com",
	ExpectedAssessment = ThreatExpectedAssessment.Block,
	Category = ThreatCategory.Phishing
};

await graphClient.InformationProtection.ThreatAssessmentRequests
	.Request()
	.AddAsync(threatAssessmentRequest);

```