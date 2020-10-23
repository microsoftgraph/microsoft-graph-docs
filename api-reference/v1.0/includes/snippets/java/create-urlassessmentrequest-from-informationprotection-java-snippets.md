---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UrlAssessmentRequest threatAssessmentRequest = new UrlAssessmentRequest();
threatAssessmentRequest.url = "http://test.com";
threatAssessmentRequest.expectedAssessment = ThreatExpectedAssessment.BLOCK;
threatAssessmentRequest.category = ThreatCategory.PHISHING;

graphClient.informationProtection().threatAssessmentRequests()
	.buildRequest()
	.post(threatAssessmentRequest);

```