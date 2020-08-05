---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var threatAssessmentRequest = new MailAssessmentRequestObject
{
	RecipientEmail = "tifc@a830edad9050849EQTPWBJZXODQ.onmicrosoft.com",
	ExpectedAssessment = ThreatExpectedAssessment.Block,
	Category = ThreatCategory.Spam,
	MessageUri = "https://graph.microsoft.com/v1.0/users/c52ce8db-3e4b-4181-93c4-7d6b6bffaf60/messages/AAMkADU3MWUxOTU0LWNlOTEt="
};

await graphClient.InformationProtection.ThreatAssessmentRequests
	.Request()
	.AddAsync(threatAssessmentRequest);

```