---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ThreatAssessmentRequestCollectionPage threatAssessmentRequests = graphClient.informationProtection().threatAssessmentRequests()
	.buildRequest()
	.get();

```