---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var threatAssessmentRequest = new FileAssessmentRequestObject
{
	ExpectedAssessment = ThreatExpectedAssessment.Block,
	Category = ThreatCategory.Malware,
	FileName = "test.txt",
	ContentData = "VGhpcyBpcyBhIHRlc3QgZmlsZQ=="
};

await graphClient.InformationProtection.ThreatAssessmentRequests
	.Request()
	.AddAsync(threatAssessmentRequest);

```