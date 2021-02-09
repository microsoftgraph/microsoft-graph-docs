---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EmailFileAssessmentRequest threatAssessmentRequest = new EmailFileAssessmentRequest();
threatAssessmentRequest.recipientEmail = "tifc@a830edad9050849EQTPWBJZXODQ.onmicrosoft.com";
threatAssessmentRequest.expectedAssessment = ThreatExpectedAssessment.BLOCK;
threatAssessmentRequest.category = ThreatCategory.MALWARE;
threatAssessmentRequest.contentData = "UmVjZWl2ZWQ6IGZyb20gTVcyUFIwME1CMDMxNC5uYW1wcmQwMC.....";

graphClient.informationProtection().threatAssessmentRequests()
	.buildRequest()
	.post(threatAssessmentRequest);

```