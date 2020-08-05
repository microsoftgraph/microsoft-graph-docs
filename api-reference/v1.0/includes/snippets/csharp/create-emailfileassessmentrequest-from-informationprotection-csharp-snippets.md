---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var threatAssessmentRequest = new EmailFileAssessmentRequestObject
{
	RecipientEmail = "tifc@a830edad9050849EQTPWBJZXODQ.onmicrosoft.com",
	ExpectedAssessment = ThreatExpectedAssessment.Block,
	Category = ThreatCategory.Malware,
	ContentData = "UmVjZWl2ZWQ6IGZyb20gTVcyUFIwME1CMDMxNC5uYW1wcmQwMC....."
};

await graphClient.InformationProtection.ThreatAssessmentRequests
	.Request()
	.AddAsync(threatAssessmentRequest);

```